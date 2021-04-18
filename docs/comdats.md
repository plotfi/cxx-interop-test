# Swift-C++-Interop and COMDATs

_Documented here for posterity._

Special thanks to http://github.com/compnerd

For some background, say we have the following:

```
template <typename T> struct S {
  S() = default;
  int method() const;
};

template <typename T> int S::method() {
  static int i;
  return i++;
}

// Implementation 1
namespace {
  S<int> si;
  int si_method_i = si.method();
}

// Implementation 2
namespace {
  S<int> si;
  int si_method_i = si.method();
}
```

Where is the data backing `int i` stored? Normally with many C++ classes this data is stored where an anchor method is defined. But with header defined template types there is no such place. So what the C++ compiler does is for every template defined instance it creates a stub (or in LLVM IR, a `declare`). Eventually the C++ compiler constructs a COMDAT (common data) where template specialized code and data is defined.

Currently the Swift compiler's Clang importer for C++ (a bulk of where CXX-Interop is driven) does not handle the template specializations meant for COMDAT and that means for the following:

```
// C++ (CXX.cpp)
#include <vector>
struct V {
  std::vector<int> &getVec() { return Vec; }
  std::vector<int> Vec = {1, 2, 3};
};

// Swift
import CXX
import std.vector

extension std.__1.__CxxTemplateInstNSt3__16vectorIiNS_9allocatorIiEEEE {
  mutating func swift_array() -> Array<Self.value_type> {
    return Array<Self.value_type>(unsafeUninitializedCapacity:
                                  self.size()) {
      _ = memcpy($0.baseAddress, self.data(),
                 $0.count *
                 MemoryLayout<Self.value_type>
                 .stride)
      $1 = $0.count
    }
  }
}

var v = V()
let array = v.getVec()[0].swift_array()
print("std::vector: \(array)")
```

Will result in a link error that looks like the following:

```
Undefined symbols for architecture:
  "__ZNSt3__1L19__libcpp_deallocateEPvmm", referenced from:
      __ZNSt3__19allocatorIiE10deallocateEPim in main-67574f.o

ld: symbol(s) not found for architecture
```

After much speculation and experimentation, in the conversations mentioned above it was determined that a very simple solution to this could be to use the Clang AST and the Swift AST to determine where in with Swift or C++ code such template instantiations are being made and to emit them as an in memory C++ file that will compile into its own translation unit and thus serve as the anchor we need for the location of such specializations (COMDAT things should be handled by Clang from here).

To experiment with this, we tried writing some of this template specialized code ourselves (based on the symbols that were missing for the linker, when you demangle them):

```
// CXX.cpp
#include <vector>
template class std::vector<int>;
template class std::__vector_base<int, std::allocator<int>>;
template class std::__vector_base_common<true>;

```

At first we tried compiling this into its own .o file and linking with swiftc but still hit the same link error. Of course this is because these methods in libc++ are marked `D_LIBCPP_HIDE_FROM_ABI` which defaults to internal linkage if the compiler supports it. As a workaround we pass to the compiler:

```
 -D_LIBCPP_HIDE_FROM_ABI=\
   "__attribute__((__visibility__(\"hidden\")))" 
```

And there it is, if we provide a .o file with the compiled template specializations we can link and run the above code and the results speak for themselves:

```
$ c++ -D_LIBCPP_HIDE_FROM_ABI=\
  "__attribute__((__visibility(\"hidden\")))" \
  -c -std=c++11 CXX.cpp
$ swiftc <lots of flags not here> \
    -Xfrontend -enable-cxx-interop \
    -Xcc -nostdinc++ -lc++ \
    -Xcc -D_LIBCPP_HIDE_FROM_ABI=\
     "__attribute__((__visibility__(\"hidden\")))" \
  main.swift CXX.o -o main
$ ./main
std::vector: [1, 2, 3]
```

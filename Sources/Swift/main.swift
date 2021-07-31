import CXX
import std.string_view
import std.vector

"42".withCString { cstring in
    let view = std.__1.string_view(cstring)
    assert(is_str_42(view))
}

"32".withCString { cstring in
    let view = std.__1.string_view(cstring)
    assert(!is_str_42(view))
}

let view = std.__1.string_view("42")
let a = is_str_42(view)

cxx_f(42)

var MS = MyStruct()
var MS1 = MS[0]

var MS2 = MyStructValType()
var MS3 = MS2[0]


extension cxx_std_vector_of_int {
  mutating func swift_array() -> Array<Self.value_type> {
    return Array<Self.value_type>(unsafeUninitializedCapacity: self.size()) {
      // FIXME(compnerd) this does not invoke the constructor for the moved
      // types, however, given that all types are currently value only, and
      // theoretically trivially constructible, this should be safe.
      _ = memcpy($0.baseAddress, self.data(), $0.count * MemoryLayout<Self.value_type>.stride)
      $1 = $0.count
    }
  }
}

var v = V()
let arr = v.getVec()[0].swift_array()
print("std::vector: \(arr)")

print("Done.")

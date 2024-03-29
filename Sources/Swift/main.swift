import CXX
import CxxStdlib

/*

Output should look something like:

42 2 3 4 5 99 99

v1: [42, 2, 3, 4, 5, 99, 99]
v3: [42, 2, 3, 4, 5, 99, 99]
Modifying v3
v1: [42, 2, 3, 4, 5, 99, 99]
v3: [42, 2, 3, 4, 5, 99, 99, 2013]
Done.

*/

public func TheAnswer() -> Int {
  return 42
}

/******************************************************************************\

  Showcasing Extensions with template types and instances.

\******************************************************************************/

// Extensions to generic versions of templates do not work (PL: I have not figured this out myself that is)
// extension std.vector { mutating func swift_array() -> Array<Self.value_type> { } }

// Putting an extension on a typealias / using is possible.
extension cxx_std_vector_of_int {
   mutating func swift_array() -> Array<Self.value_type> {
    var arr : [Self.value_type] = []
    for i in 0..<self.size() {
      arr.append(self[i])
    }

    return arr
  }
}

/******************************************************************************\

  Showcasing std::vector<int> and operator[]

\******************************************************************************/

let arr : [CInt] = [1, 2, 3, 4, 5]
var v1 = cxx_std_vector_of_int()

var val : CInt = 42
var v2 = cxx_std_vector_of_int(2, val)

for a in arr {
  let b = a
  v1.push_back(b)
}

// "__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm", referenced from
// v1[1] = 24

v1[0] = 42

var a : CInt = 99
v1.push_back(a)
v1.push_back(a)

for i in 0..<v1.size() {
   print(v1[i], terminator: " ")
}
print("\n")

print("v1: \(v1.swift_array())")
var v3 = v1
print("v3: \(v3.swift_array())")

print("Modifying v3")

var b : CInt = 2013
v3.push_back(b)
print("v1: \(v1.swift_array())")
print("v3: \(v3.swift_array())")


/******************************************************************************\

  Showcasing string_view

\******************************************************************************/

"42".withCString { cstring in
    let view = std.__1.string_view(cstring)
    assert(is_str_42(view))
}

"32".withCString { cstring in
    let view = std.__1.string_view(cstring)
    assert(!is_str_42(view))
}

let view = std.string_view("42")
let isStr42 = is_str_42(view)


/******************************************************************************\

  Showcasing namespaces and enum classes

\******************************************************************************/


let C = NS1.Color.Black


/******************************************************************************\

  Showcasing C++ Lambdas (does not work currently).

\******************************************************************************/

#if false
var lambdaOut = getFunction()
var value = lambdaOut(42)
#endif

let answersAnswer = TheAnswersAnswer()
print("The answer to the answer is \(answersAnswer)")

print("Done.")

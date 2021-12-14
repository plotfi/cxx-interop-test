import CXX
import std.vector

typealias cxx_std_vector_of_int = std.__1.__CxxTemplateInstNSt3__16vectorIiNS_9allocatorIiEEEE

func PrintVector(_ V: inout cxx_std_vector_of_int) {
  print("std::vector: ", terminator: "[ ")
  for i in 0..<V.size() {
    print(V[i], terminator: " ")
  }
  print("]\n")
}

extension cxx_std_vector_of_int {
  mutating func print() {
    PrintVector(&self)
  }
}

var v = V()

print("Initializing Vector1 as [ 1 2 3 4 5 ]")
var Vector1 = v.Vec

print("Printing Vector1:")
Vector1.print()

print("Assigning Vector1 to Vector2")
var Vector2 = Vector1

print("Clearing Vector2 (std::vector<T>::clear()")
Vector2.clear()

print("Printing Vector2:")
Vector2.print()

print("Printing Vector1:")
Vector1.print()

print("Done.")

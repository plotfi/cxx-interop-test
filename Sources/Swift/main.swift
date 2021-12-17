import CXX
import std.vector

typealias cxx_std_vector_int = std.vector<CInt, std.allocator<CInt>>

func PrintStdVector(_ V : inout std.vector<CInt, std.allocator<CInt>>) {
  print("std::vector: ", terminator: "[ ")
  for i in 0..<V.size() {
    print(V[i], terminator: " ")
  }
  print("]\n")
}

func push_back(_ V : inout cxx_std_vector_int, _ Val : CInt) {
  let ValuePointer = UnsafeMutablePointer<CInt>.allocate(capacity: 1)

  var Value: [CInt] = [Val]
  defer { ValuePointer.deallocate() }
  ValuePointer.initialize(from: &Value, count: 1)

  // Link Error:
  // V.push_back(ValuePointer)
}

var v = V()

print("Initializing Vector1 as [ 1 2 3 4 5 ]")
var Vector1 = v.Vec

print("Printing Vector1:")
PrintStdVector(&Vector1)

print("Assigning Vector1 to Vector2")
var Vector2 = Vector1

print("Clearing Vector2 (std::vector<T>::clear()")
Vector2.clear()

print("Printing Vector2:")
PrintStdVector(&Vector2)

print("Printing Vector1:")
PrintStdVector(&Vector1)

var Vector3 = std.vector<CInt, std.allocator<CInt>>()
push_back(&Vector3, 42)

print("Done.")

import CXX
import std.vector

var v = V()
var Vector : cxx_std_vector_of_int = v.getVec()[0]

print("std::vector: ", terminator: "[ ")
for i in 0..<Vector.size() {
    print(Vector[i], terminator: " ")
}
print("]\n")

print("Done.")

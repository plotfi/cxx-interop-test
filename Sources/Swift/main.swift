import CXX
import std.vector

var G = g()
var F = f(23)

var v = V()
var Vector : cxx_std_vector_of_int = v.Vec

print("std::vector: ", terminator: "[ ")
for i in 0..<Vector.size() {
    print(Vector[i], terminator: " ")
}
print("]\n")

print("Done.")

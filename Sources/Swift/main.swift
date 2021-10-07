import CXX
import std.vector

var v = V()
var Vector = v.Vec

print("std::vector: ", terminator: "[ ")
for i in 0..<Vector.size() {
    print(Vector[i], terminator: " ")
}
print("]\n")

print("Done.")

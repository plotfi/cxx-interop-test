import CXX
import std.vector

extension cxx_std_vector_of_int {
  mutating func swift_array() -> Array<Self.value_type> {
    return Array<Self.value_type>(unsafeUninitializedCapacity: self.size()) {
      let n = $0.count * MemoryLayout<Self.value_type>.stride
      _ = memcpy($0.baseAddress, self.data(), n)
      $1 = $0.count
    }
  }
}

var v = V()
var Vector : cxx_std_vector_of_int = v.getVec()[0]
let arr = Vector.swift_array()

print("std::vector: \(arr)")
print("Done.")
#ifndef CXX_H
#define CXX_H

#include <vector>
struct V {
  std::vector<int> &getVec() { return Vec; }
  std::vector<int> Vec = {1, 2, 3, 4};
};

using cxx_std_vector_of_int = std::vector<int>;

#endif

#ifndef CXX_H
#define CXX_H

#include <vector>

struct V {
  const std::vector<int> &getVec() const { return Vec; }
  const std::vector<int> Vec = {1, 2, 3, 4};
};

using cxx_std_vector_of_int = std::vector<int>;

int g();
int f(int i);
#endif

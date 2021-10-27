// TODO: Generate these for specializing COMDATs during irgen.
#include <vector>
#include <CXX.h>

template class std::vector<int>;
template class std::__vector_base<int, std::allocator<int>>;
template class std::__vector_base_common<true>;

std::vector<int> a = {1, 2, 3};
int f(int i) {
  return a[i];
}

int g() {
  V v;
  auto vec = v.getVec();
  return vec[0];
}

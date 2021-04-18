
// TODO: Generate these for specializing COMDATs during irgen.
#include <vector>
template class std::vector<int>;
template class std::__vector_base<int, std::allocator<int>>;
template class std::__vector_base_common<true>;

int cxx_f(int a) { return 42 + a; }

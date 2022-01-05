#ifndef CXX_H
#define CXX_H

#include <vector>
#include <string_view>

bool is_str_42(std::string_view view) {
    return view == "42";
}

namespace NS1 {
  enum class Color {
    White,
    Black,
    Green,
    Red,
  };
}

using cxx_std_vector_of_int = std::vector<int>;

#include <functional>
std::function<int(int)> getFunction() { return [](int a) { return 0; }; }

#endif

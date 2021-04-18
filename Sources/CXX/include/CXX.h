#ifndef CXX_H
#define CXX_H

#include <vector>
#include <string_view>

bool is_str_42(std::string_view view) {
    return view == "42";
}

int cxx_f(int);

struct MyStruct {
  const int &operator[](int x) const { return 42; }
};

struct MyStructValType {
  const int operator[](int x) const { return 42; }
};

struct V {
  std::vector<int> &getVec() { return Vec; }
  std::vector<int> Vec = {1, 2, 3};
};

#endif

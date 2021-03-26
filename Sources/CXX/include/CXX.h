#ifndef CXX_H
#define CXX_H

#include <string_view>

int cxx_f(int);

bool is_str_42(std::string_view view) {
    return view == "42";
}

#endif

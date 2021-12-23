cmake_minimum_required(VERSION 3.18)

project(cxx-interopt-test LANGUAGES CXX Swift)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(cxx-support Sources/CXX/CXX.cpp)
target_compile_options(cxx-support PRIVATE
  -I${SWIFT_CXX_TOOLCHAIN}/usr/include/c++/v1
  -fno-exceptions
  -fignore-exceptions
  -U_LIBCPP_HIDE_FROM_ABI_PER_TU
  -U_LIBCPP_HIDE_FROM_ABI_PER_TU_BY_DEFAULT
  -U_LIBCPP_HIDE_FROM_ABI
  -D_LIBCPP_HIDE_FROM_ABI_PER_TU=0
  -U_LIBCPP_DISABLE_VISIBILITY_ANNOTATIONS
  -nostdinc++)
target_include_directories(cxx-support PUBLIC
  ${CMAKE_SOURCE_DIR}/Sources/CXX/include)

add_executable(cxx-interop-test Sources/Swift/main.swift)
target_compile_options(cxx-interop-test PRIVATE
  "SHELL:-Xfrontend -enable-cxx-interop"
  "SHELL:-Xfrontend -validate-tbd-against-ir=none"
  "SHELL:-Xcc -nostdinc++"
  "SHELL:-Xcc -fno-exceptions"
  "SHELL:-Xcc -fignore-exceptions"
  "SHELL:-Xcc -U_LIBCPP_HIDE_FROM_ABI_PER_TU"
  "SHELL:-Xcc -U_LIBCPP_HIDE_FROM_ABI_PER_TU_BY_DEFAULT"
  "SHELL:-Xcc -U_LIBCPP_HIDE_FROM_ABI"
  "SHELL:-Xcc -D_LIBCPP_HIDE_FROM_ABI_PER_TU=0"
  "SHELL:-Xcc -U_LIBCPP_DISABLE_VISIBILITY_ANNOTATIONS"
  "SHELL:-Xcc -I${SWIFT_CXX_TOOLCHAIN}/usr/include/c++/v1"
  -lc++)
target_link_libraries(cxx-interop-test PRIVATE cxx-support)

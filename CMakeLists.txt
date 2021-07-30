cmake_minimum_required(VERSION 3.15.1)

project(cxx-support LANGUAGES CXX)
add_library(cxx-support Sources/CXX/CXX.cpp)
target_compile_options(cxx-support PRIVATE
  -c -std=c++11 -nostdinc++)

project(cxx-interop-test LANGUAGES Swift)
add_executable(cxx-interop-test Sources/Swift/main.swift)
add_dependencies(cxx-interop-test cxx-support)
target_compile_options(cxx-interop-test PRIVATE
  -I${CMAKE_SOURCE_DIR}/Sources/CXX/include
  libcxx-support.a
  "SHELL:-Xfrontend -enable-cxx-interop"
  "SHELL:-Xfrontend -validate-tbd-against-ir=none"
  "SHELL:-Xcc -nostdinc++"
  -lc++)

cmake_minimum_required(VERSION 3.15.1)

project(cxx-interop-test LANGUAGES Swift)

add_executable(cxx-interop-test Sources/Swift/main.swift)
target_compile_options(cxx-interop-test PRIVATE
  -I${CMAKE_SOURCE_DIR}/Sources/CXX/include
  "SHELL:-Xfrontend -enable-cxx-interop"
  "SHELL:-Xfrontend -validate-tbd-against-ir=none"
  "SHELL:-Xcc -nostdinc++"
  -lc++)

cmake_minimum_required(VERSION 3.18)

project(cxx-interopt-test LANGUAGES CXX Swift)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_library(cxx-support Sources/CXX/CXX.cpp)
target_compile_options(cxx-support PRIVATE
  -fno-exceptions
  -fignore-exceptions)

target_include_directories(cxx-support PUBLIC
  ${CMAKE_BINARY_DIR}
  ${CMAKE_SOURCE_DIR}/Sources/CXX/include)

add_executable(cxx-interop-test Sources/Swift/main.swift)
target_compile_options(cxx-interop-test PRIVATE
  "SHELL:-cxx-interoperability-mode=default"
  "SHELL:-Xfrontend -validate-tbd-against-ir=none"
  "SHELL:-Xcc -fno-exceptions"
  "SHELL:-Xcc -fignore-exceptions")
target_link_libraries(cxx-interop-test PRIVATE cxx-support)

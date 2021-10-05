cmake_minimum_required(VERSION 3.18)

project(cxx-interopt-test LANGUAGES CXX Swift)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(cxx-support Sources/CXX/CXX.cpp)
target_compile_options(cxx-support PRIVATE
  -I/Users/plotfi/local/S/build/Ninja-RelWithDebInfoAssert/toolchain-macosx-x86_64/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
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
  "SHELL:-Xcc -I/Users/plotfi/local/S/build/Ninja-RelWithDebInfoAssert/toolchain-macosx-x86_64/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1"
  -lc++)
target_link_libraries(cxx-interop-test PRIVATE cxx-support)

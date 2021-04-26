#!/bin/bash

c++ -D_LIBCPP_HIDE_FROM_ABI="__attribute__((__visibility(\"hidden\")))" -c -std=c++11 ./Sources/CXX/CXX.cpp 
swiftc -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/ \
  -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1 \
  -I./Sources/CXX/include \
  -Xfrontend -enable-cxx-interop \
  -Xfrontend -validate-tbd-against-ir=none \
  -Xcc -nostdinc++ -lc++ \
  -Xcc -D_LIBCPP_HIDE_FROM_ABI="__attribute__((__visibility__(\"hidden\")))" \
  ./Sources/Swift/main.swift \
  CXX.o \
  -o main


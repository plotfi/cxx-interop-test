#!/bin/bash

clang++ -D_LIBCPP_HIDE_FROM_ABI="__attribute__((__visibility(\"hidden\")))" -c -std=c++11 ./Sources/CXX/CXX.cpp
swiftc -sdk `xcode-select -p`/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/ \
  -I./Sources/CXX/include \
  -Xfrontend -enable-cxx-interop \
  -Xfrontend -validate-tbd-against-ir=none \
  -Xcc -nostdinc++ -lc++ \
  -Xcc -D_LIBCPP_HIDE_FROM_ABI="__attribute__((__visibility__(\"hidden\")))" \
  ./Sources/Swift/main.swift \
  CXX.o \
  -o main


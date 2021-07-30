# cxx-interop test
Small test app for C++ Interop with Swift.

To build you need the latest top of tree Swift from github.com/apple/swift

To build Swift with swift PM use buildscript as follows:

```
/path/to/swift/checkouts/swift/utils/build-script \
  --skip-build-benchmarks --skip-ios --skip-watchos --skip-tvos \
  --swift-darwin-supported-archs "$(uname -m)" \
  --release-debuginfo --swift-disable-dead-stripping \
  --swiftpm --libcxx --llbuild  --install-all true
```

This will setup an xcode.app directory in your build dir. Modify your `PATH`,
`SDKROOT` and `CPATH` as follows:

```
export SWIFT_BUILD_DIR=/path/to/swift/build
export FAUXXCODE=Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain
export TOOLCHAIN=$SWIFT_BUILD_DIR/Ninja-*/toolchain-*/$FAUXXCODE
export CPATH=$TOOLCHAIN/usr/include/c++/v1
export PATH=$TOOLCHAIN/usr/bin/:$PATH
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
```

Ths should give you a workable swift package manager to use to build this project.

To build run the following:

```
swift build
```

The runable end result should be in the .build directory.


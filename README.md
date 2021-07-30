# cxx-interop test
Small test app for C++ Interop with Swift.

To build you need the latest top of tree Swift from github.com/apple/swift


## NOTE: SPM can be busted at times when things require the latest ToT Swift. CMake can be more reliable:

```
cmake -GNinja -B./build .
ninja -C./build
./build/cxx-interop-test

Output:

std::vector: [1, 2, 3]
Done.

```

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
# Set these manually as you see fit:
export SWIFT_BUILD_DIR=/path/to/swift/checkouts/build
export TOOLCHAIN_BUILD_DIR=$SWIFT_BUILD_DIR/Ninja-RelWithDebInfoAssert/toolchain-macosx-x86_64
export XCODE_DEV_ROOT=`xcode-select -p`

# These should be correct as is:
export XCTOOLCHAIN_SUBDIR=Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain
export XCTOOLCHAIN=$TOOLCHAIN_BUILD_DIR/$XCTOOLCHAIN_SUBDIR
export CPATH=$XCTOOLCHAIN/usr/include/c++/v1
export PATH=$XCTOOLCHAIN/usr/bin/:$PATH
export SDKROOT=$XCODE_DEV_ROOT/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
```

Ths should give you a workable swift package manager to use to build this project.

To build run the following:

```
swift build
```

The runable end result should be in the .build directory.


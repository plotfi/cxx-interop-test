# This is a hack. Figure out how to integrate into Packages.swift

swift-frontend   -I ./Sources/CXX/include/ -emit-ir -enable-cxx-interop \
  ./Sources/Swift/VendorImport/vendor.swift 
  -Xcc -D__ONLY_VENDOR__ -Xcc -D__VENDOR_HEADERS__ \
  -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/

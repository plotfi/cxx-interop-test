// swift-tools-version:5.3

import PackageDescription
import Foundation

guard let sdkRoot = ProcessInfo.processInfo.environment["SDKROOT"] else {
    fatalError("Could not find SDKROOT")
}

guard let cPath = ProcessInfo.processInfo.environment["CPATH"] else {
    fatalError("Could not find CPATH")
}

let package = Package(
    name: "cxx-interop-test",
    platforms: [.macOS(.v10_15)],
    products: [
        .executable(
            name: "cxx-interop-test",
            targets: ["cxx-interop-test"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "CXX", dependencies: []),
        .target(
            name: "cxx-interop-test",
            dependencies: ["CXX"],
            path: "./Sources/Swift",
            sources: [ "main.swift" ],
            swiftSettings: [.unsafeFlags(["-target", "arm64-apple-macosx10.15",
                                          // TODO: we shouldn't have to do this. See SRXXXX.
                                          "-Xfrontend", "-validate-tbd-against-ir=none",
                                          "-Xfrontend",
                                          "-enable-cxx-interop",
                                          "-I", "Sources/CXX/include",
                                          "-I", "\(sdkRoot)/usr/include",
                                          "-I", "\(cPath)",
                                          "-Xcc", "-nostdinc++"])]),
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx14
)

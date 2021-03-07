// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "cxx-interop-test",
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
            sources: [ "main.swift" ]),
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx14
)

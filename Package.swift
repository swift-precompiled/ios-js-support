// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "ios-js-support",
    products: [
        .library(
            name: "FindInPageIOSJSSupport",
            targets: ["FindInPageIOSJSSupport", "FindInPageIOSJSSupport_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "FindInPageIOSJSSupport_Aggregation",
            dependencies: ["FindInPageIOSJSSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FindInPageIOSJSSupport",
            url: "https://github.com/swift-precompiled/ios-js-support/releases/download/2.0.0/FindInPageIOSJSSupport-c407dca72c7574dad3f5f1a5a8979e0450c6b7c1956e7183a62c7b95d37104f6.xcframework.zip",
            checksum: "c407dca72c7574dad3f5f1a5a8979e0450c6b7c1956e7183a62c7b95d37104f6"
        ),
        .target(
            name: "FindInPageIOSJSSupport_PrecompiledProduct",
            dependencies: ["FindInPageIOSJSSupport_Aggregation"]
        )
    ]
)
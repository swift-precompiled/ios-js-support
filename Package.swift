// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "ios-js-support",
    products: [
        .library(
            name: "FindInPageIOSJSSupport",
            targets: ["FindInPageIOSJSSupport_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/ios-js-support/releases/download/2.0.0/FindInPageIOSJSSupport-6ef2aaea2def50822e576dbc3b9a227feb5a7df236658651efaad8d72d823e83.xcframework.zip",
            checksum: "6ef2aaea2def50822e576dbc3b9a227feb5a7df236658651efaad8d72d823e83"
        ),
        .target(
            name: "FindInPageIOSJSSupport_PrecompiledProduct",
            dependencies: ["FindInPageIOSJSSupport_Aggregation"]
        )
    ]
)
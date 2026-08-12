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
            resources: [.process("jsSources")],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FindInPageIOSJSSupport",
            url: "https://github.com/swift-precompiled/ios-js-support/releases/download/2.0.0/FindInPageIOSJSSupport-b1979a331d7a5c15fb03228c9278e14bfdd25bee9f94a182f935d1e02d713158.xcframework.zip",
            checksum: "b1979a331d7a5c15fb03228c9278e14bfdd25bee9f94a182f935d1e02d713158"
        ),
        .target(
            name: "FindInPageIOSJSSupport_PrecompiledProduct",
            dependencies: ["FindInPageIOSJSSupport_Aggregation"],
            packageAccess: false
        )
    ]
)
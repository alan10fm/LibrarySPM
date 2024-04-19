// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetkiSDKSPM",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NetkiSDKSPM",
            targets: ["NetkiSDKSPM", "NetkiSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1")),
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "4.0.0"),
        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "8.24.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NetkiSDKSPM",
            dependencies: [.product(name: "Sentry", package: "sentry-cocoa"), "Alamofire", "DeviceKit"]
        ),
        .testTarget(
            name: "NetkiSDKSPMTests",
            dependencies: ["NetkiSDKSPM"]
        ),
        .binaryTarget(
            name: "NetkiSDK",
            path: "./Sources/NetkiSDK.xcframework"
        )
    ]
)

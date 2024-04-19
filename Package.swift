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
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.2.2"),
        .package(url: "https://github.com/devicekit/DeviceKit.git", exact: "4.0.0"),
        .package(url: "https://github.com/getsentry/sentry-cocoa", exact: "8.22.4")
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

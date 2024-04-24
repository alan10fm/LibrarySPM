// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibrarySPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LibrarySPM",
            targets: ["LibrarySPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1")),
        .package(url: "https://github.com/getsentry/sentry-cocoa", .upToNextMajor(from: "8.24.0")),
        .package(url: "https://github.com/devicekit/DeviceKit.git", .upToNextMajor(from: "4.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LibrarySPM",
            dependencies: [
                .product(name: "Sentry", package: "sentry-cocoa"),
                "Alamofire",
                "DeviceKit",
            ]
        ),
        .binaryTarget(
            name: "NetkiSDK",
            path: "xcframework/NetkiSDK.xcframework"
        ),
        .testTarget(
            name: "LibrarySPMTests",
            dependencies: ["LibrarySPM"]),
    ]
)

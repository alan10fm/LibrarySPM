// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetkiSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NetkiSDK",
            targets: ["NetkiSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "NetkiSDK",
            url: "https://github.com/alan10fm/LibrarySPM/raw/main/NetkiSDK.zip",
            checksum: "7a188a223af70cd2afee3ac54ae81139a32f0a2e77c973fae5fff3f8552e061a")
    ]
)

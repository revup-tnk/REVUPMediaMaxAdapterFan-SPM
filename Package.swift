// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterFan",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterFan",
            targets: ["REVUPMediaMaxAdapterFanTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterFanTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterFan"),
                .target(name: "FBAudienceNetwork"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterFan",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterFan.zip",
            checksum: "465686dc9cf96c62ba9a3647f1009ac3d116ecf3020b85f62cf1a1c0ab1f2264"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/FBAudienceNetwork.xcframework.zip",
            checksum: "584282ccc2121d3d4c51ea69049665695fbf93c2b581a1e07ddb8b9964d3f1d4"
        ),
    ]
)

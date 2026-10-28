// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterFan",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterFan",
            targets: ["REVUPMediaMaxAdapterFanTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Meta.git", exact: "6220004.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterFanTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterFan"),
                .product(name: "AppLovinMediationFacebookAdapter", package: "AppLovin-MAX-Swift-Package-Meta"),
            ],
            path: "Sources",
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterFan",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterFan.zip",
            checksum: "798f245f28bacea226d69bfa66fd6b960767d7b7662e9b3fdc12eb3c66af42b9"
        ),
    ]
)

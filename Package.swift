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
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.21.1")
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterFanTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterFan"),
                .target(name: "AppLovinMediationFacebookAdapter"),
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork"),
            ],
            path: "Sources",
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterFan",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterFan.zip",
            checksum: "ebb36030b0e2aa413cb829f15c2b732c2966f1ec8b6f06f52ff61332de83839d"
        ),
        .binaryTarget(
            name: "AppLovinMediationFacebookAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/facebook-adapter/AppLovinMediationFacebookAdapter-6.21.1.0.zip",
            checksum: "69069f3c153a9387a355a2e4e9ed322bcc4fcec7b0f5bc80fa9880e9c69c1ccb"
        )
    ]
)

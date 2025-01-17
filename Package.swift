// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "AeroGearHttp",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "AeroGearHttp",
            targets: ["AeroGearHttp"]),
    ],
    dependencies: [
         .package(url: "https://github.com/AliSoftware/OHHTTPStubs.git", from: "9.0.0"),
    ],
    targets: [
        .target(
            name: "AeroGearHttp",
            dependencies: ["OHHTTPStubs"],
            path: "AeroGearHttp/",
            exclude: ["info.plist"]
        )
    ]
)

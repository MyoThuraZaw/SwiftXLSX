// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftXLSX",
    platforms: [
        .iOS("14.0"),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "SwiftXLSX",
            targets: ["SwiftXLSX"]),
    ],
    dependencies: [
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", "0.9.16"..<"1.0.0"),
        .package(
              url: "https://github.com/apple/swift-collections.git",
              .upToNextMajor(from: "1.0.0")
            )
    ],
    targets: [
        .target(
            name: "SwiftXLSX",
            dependencies: [
                .product(name: "Collections", package: "swift-collections"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation")
            ]
        ),
        .testTarget(
            name: "SwiftXLSXTests",
            dependencies: [
                "SwiftXLSX"
            ]
        ),
    ]
)

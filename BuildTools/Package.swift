// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BuildTools",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat",
                 exact: .init(0, 51, 12)),
        .package(url: "https://github.com/realm/SwiftLint.git",
                 exact: .init(0, 52, 4)),
        .package(url: "https://github.com/mono0926/LicensePlist",
                 exact: .init(3, 24, 10)),
    ],
    targets: []
)

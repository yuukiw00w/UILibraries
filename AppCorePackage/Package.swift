// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppCore",
    defaultLocalization: "jp",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "AppCoreModule",
            targets: ["AppCore"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git",
                 exact: .init(10, 6, 0)),
    ],
    targets: [
        .target(
            name: "AppCore",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                .product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk"),
            ]
        ),
        .testTarget(
            name: "AppCoreTests",
            dependencies: ["AppCore"]
        ),
    ]
)

package.targets.forEach { target in
    /// コンパイラフラグはswiftc --helpとswiftc -frontend --helpで確認可能
    /// swiftc -frontend --helpでだけ見れる方には-Xfrontendをつけて渡す
    /// @see https://github.com/apple/swift/blob/main/include/swift/Option/Options.td
    target.swiftSettings = [
        .unsafeFlags([
            "-Xfrontend",
            "-warn-long-expression-type-checking=200", // 型推論の遅い箇所に警告
            "-Xfrontend",
            "-warn-long-function-bodies=200", // コンパイルの遅い関数に警告
            "-strict-concurrency=complete", // SendableとActorの使い方に問題がある箇所に警告
            "-enable-actor-data-race-checks", // 実行時に見逃すデータ競合に警告
        ], .when(configuration: .debug))
    ]
}

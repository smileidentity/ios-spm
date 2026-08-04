// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge", "UseSmileIDLottieSupport", "UseSmileIDSentrySupport"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge", "UseSmileIDSentrySupport"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge", "UseSmileIDSentrySupport"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge", "UseSmileIDSentrySupport"]
        ),
    ],
    dependencies: [
        // lottie-spm wraps the same prebuilt dynamic Lottie.xcframework our xcframeworks link against — real package identity, so a partner depending on it too resolves to one shared copy.
        .package(url: "https://github.com/airbnb/lottie-spm", from: "4.6.0"),
        // We need the dynamic "Sentry-Dynamic" product specifically; assumes Sentry's XCFrameworks stay ABI-stable across the 9.x line (library evolution), same as ours.
        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "9.8.0"),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileID.xcframework.zip",
            checksum: "62041bb23048aea7586492a14cc15447922cabe6ca96c5a6a19e15527dfb87fb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileIDBridge.xcframework.zip",
            checksum: "cca10b573a4428fcacb42f6bb8895e92efa94d092394f4f72b9bd85f3dd596d7"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileIDVisionFace.xcframework.zip",
            checksum: "eb079bf5c7e070c53af31eec14042975d3982776c7d83e8f70148be1c3e47569"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3983a13a3d8349128a26b6f15a6d4cb5a0d91d9d5d988a13b041e5f32e3b39ad"
        ),
        // Carries the real package dependencies — binary targets can't declare dependencies themselves.
        .target(
            name: "UseSmileIDLottieSupport",
            dependencies: [.product(name: "Lottie", package: "lottie-spm")],
            path: "Sources/UseSmileIDLottieSupport"
        ),
        .target(
            name: "UseSmileIDSentrySupport",
            dependencies: [.product(name: "Sentry-Dynamic", package: "sentry-cocoa")],
            path: "Sources/UseSmileIDSentrySupport"
        ),
    ]
)

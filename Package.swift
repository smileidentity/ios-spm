// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge", "UseSmileIDLottieSupport", "UseSmileIDSentrySupport", "UseSmileIDKameraSupport"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge", "UseSmileIDSentrySupport", "UseSmileIDKameraSupport"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge", "UseSmileIDSentrySupport", "UseSmileIDKameraSupport"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge", "UseSmileIDSentrySupport", "UseSmileIDKameraSupport"]
        ),
    ],
    dependencies: [
        // lottie-spm wraps the same prebuilt dynamic Lottie.xcframework our xcframeworks link against — real package identity, so a partner depending on it too resolves to one shared copy.
        .package(url: "https://github.com/airbnb/lottie-spm", from: "4.6.0"),
        // Default static "Sentry" product: our binaries no longer link Sentry at all, so this compiles into the app like any other SPM source — a host on the same default product unifies on one package node.
        // Floor 8.58.4: the lowest sentry-cocoa that builds under current SwiftPM, and the exact
        // version sentry_flutter 9.25+ pins — a narrower window fails partner graphs at resolution.
        .package(url: "https://github.com/getsentry/sentry-cocoa", "8.58.4"..<"10.0.0"),
        // Kamera is the SDK's camera engine. UseSmileID.framework and UseSmileIDBridge.framework link
        // Kamera.framework dynamically (`@rpath/Kamera.framework/Kamera`), so the app must embed it —
        // a binary target cannot declare that, hence the UseSmileIDKameraSupport shim below. The exact
        // pin is rewritten on every publish from the ios-v12 Bridge project's kamera-spm pin
        // (Scripts/publish_spm.sh), so partners resolve the Kamera the xcframeworks were built against.
        .package(url: "https://github.com/smileidentity/kamera-spm", exact: "1.1.1-SNAPSHOT.18"),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.2.0-SNAPSHOT.20261010222737.38091218525/UseSmileID.xcframework.zip",
            checksum: "222ea65c5cc54f4291be097d1403b5efac0fffeac9e5c6b90843500c164b946b"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.2.0-SNAPSHOT.20261010222737.38091218525/UseSmileIDBridge.xcframework.zip",
            checksum: "bcc8f0249713bcd811be278d4ab5bf3e6939f85a61d9f3eaf07ed66a87a161b6"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.2.0-SNAPSHOT.20261010222737.38091218525/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c4a1cc56a5e00bb3bac37c23c8e6f5713c9fb400225d10244e8316598f635faa"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.2.0-SNAPSHOT.20261010222737.38091218525/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "954ddb799d60ca0d12fab6ad0740a1f8fb3dd4cefda52045f884c4ca274b989a"
        ),
        // Carries the real package dependencies — binary targets can't declare dependencies themselves.
        .target(
            name: "UseSmileIDLottieSupport",
            dependencies: [.product(name: "Lottie", package: "lottie-spm")],
            path: "Sources/UseSmileIDLottieSupport"
        ),
        .target(
            name: "UseSmileIDSentrySupport",
            dependencies: ["UseSmileIDBridge", .product(name: "Sentry", package: "sentry-cocoa")],
            path: "Sources/UseSmileIDSentrySupport"
        ),
        .target(
            name: "UseSmileIDKameraSupport",
            dependencies: [.product(name: "Kamera", package: "kamera-spm")],
            path: "Sources/UseSmileIDKameraSupport"
        ),
    ]
)

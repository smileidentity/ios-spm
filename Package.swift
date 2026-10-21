// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge", "UseSmileIDLottieSupport", "UseSmileIDSentrySupport", "UseSmileIDKameraSupport", "UseSmileIDNjiaSupport"]
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
        // The test doubles a partner links into their app (docs/Testing-Your-Integration.md in ios-v12).
        // A test starts only under DEBUG, so a launch argument can't turn a Release build into a test run.
        .library(
            name: "UseSmileIDTesting",
            targets: ["UseSmileIDTesting"]
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
        .package(url: "https://github.com/smileidentity/kamera-spm", exact: "1.2.1-SNAPSHOT.28"),
        // Njia is the navigation engine the SDK's flows run on. UseSmileID.framework links
        // Njia.framework dynamically (`@rpath/Njia.framework/Njia`), so the app must embed it, as it
        // does Kamera: hence the UseSmileIDNjiaSupport shim below. The exact pin is rewritten on every
        // publish from the ios-v12 UseSmileID project's njia-spm pin (Scripts/publish_spm.sh), so
        // partners resolve the Njia the xcframeworks were built against.
        .package(url: "https://github.com/smileidentity/njia-spm", exact: "0.0.1-SNAPSHOT.3"),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261021100338.39580905718/UseSmileID.xcframework.zip",
            checksum: "6b04de66b51a97e9ae99739455cc733fdeae74e935a38f86980016404dc2a058"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261021100338.39580905718/UseSmileIDBridge.xcframework.zip",
            checksum: "8b37e0576247305adb3240136a977693106a841068e93fb0946844b49148319a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261021100338.39580905718/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b4c43f9eeabb41eadea0713a7ddfdd51e2a12fd9b85df8531bdca2602e7a4dd4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261021100338.39580905718/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "06014de2efa859ae47703e80d80e3991b3e7aac5602756137b60039dea8ae3de"
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
        .target(
            name: "UseSmileIDNjiaSupport",
            dependencies: [.product(name: "Njia", package: "njia-spm")],
            path: "Sources/UseSmileIDNjiaSupport"
        ),
        // Source, like UseSmileIDSentrySupport: synced from ios-v12's SPMSourceLayer on every publish, with
        // the shared e2e scenarios as its resources. It depends on what the UseSmileID product does, so the
        // binaries' own imports resolve.
        .target(
            name: "UseSmileIDTesting",
            dependencies: [
                "UseSmileID",
                "UseSmileIDBridge",
                "UseSmileIDLottieSupport",
                "UseSmileIDSentrySupport",
                "UseSmileIDKameraSupport",
                "UseSmileIDNjiaSupport",
            ],
            path: "Sources/UseSmileIDTesting",
            resources: [.copy("Scenarios")]
        ),
    ]
)

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
        .package(url: "https://github.com/smileidentity/kamera-spm", exact: "1.2.1-SNAPSHOT.36"),
        // Njia is the navigation engine the SDK's flows run on. UseSmileID.framework links
        // Njia.framework dynamically (`@rpath/Njia.framework/Njia`), so the app must embed it, as it
        // does Kamera: hence the UseSmileIDNjiaSupport shim below. The exact pin is rewritten on every
        // publish from the ios-v12 UseSmileID project's njia-spm pin (Scripts/publish_spm.sh), so
        // partners resolve the Njia the xcframeworks were built against.
        .package(url: "https://github.com/smileidentity/njia-spm", exact: "0.0.1-SNAPSHOT.13"),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261102123620.41444666486/UseSmileID.xcframework.zip",
            checksum: "90eef2a0e54a91703600fbe821657bf777eef01fe78ea7b57e77ccc5c476f956"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261102123620.41444666486/UseSmileIDBridge.xcframework.zip",
            checksum: "a21d226895c7a9f3a1efa9de30cbfb4251d15aba32c8deb0188b893058114a8a"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261102123620.41444666486/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ca728fb6f7c9ac36b4e3d9498582705e42ff541400fa956c34e44487baab3bbe"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.3.0-SNAPSHOT.20261102123620.41444666486/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7baac1d9fb00d608751c303fa004a6ed4f38ea8e962e28e2bb1e388b3ee575bb"
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

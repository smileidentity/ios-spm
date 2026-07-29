// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDBridge",
            targets: ["UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace", "UseSmileIDBridge"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument", "UseSmileIDBridge"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729180601.30478033861/UseSmileID.xcframework.zip",
            checksum: "890cec78827d17c41de6be208548410364b490f74b2722f8a0d46d94609ef2a1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729180601.30478033861/UseSmileIDBridge.xcframework.zip",
            checksum: "f36feb7cb233b5948baf9543f809ea899448e91f33ec7530d3d346032b82ee8c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729180601.30478033861/UseSmileIDVisionFace.xcframework.zip",
            checksum: "c57a28d348d77c2b7295248d07d39b4de129cc36211ba9fdb4f7b85430dd6940"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260729180601.30478033861/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8bdde21d40cc360690ff0f7871762f31b9a87b64cda9bf39f7504f807837024f"
        ),
    ]
)

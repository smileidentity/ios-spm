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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731093437.30620155873/UseSmileID.xcframework.zip",
            checksum: "9813e988f9c7e7679d701ac414303ede1c452aef629dc9b4c3b4ea922a840c27"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731093437.30620155873/UseSmileIDBridge.xcframework.zip",
            checksum: "3be0a42db907e32d5d1cfc8480c951f59edd3cf32c5c77eacf18f3ef44312584"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731093437.30620155873/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2663e8bdd0fbeb94b4497cde93c09c569fef3d0a4a28c9041773ccd6ebd230b5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260731093437.30620155873/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "b54caf9e2af80047e1bb0d104eadd80dc5fc013e9f2c4a0640924f899408edf5"
        ),
    ]
)

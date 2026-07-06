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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125705.28793147998/UseSmileID.xcframework.zip",
            checksum: "c175fdaca0fc7e6541a718e3ffee0eb14e0b1711556696ad6ba8da958df9a50f"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125705.28793147998/UseSmileIDBridge.xcframework.zip",
            checksum: "83c426c1ebfcb267d93c400e0e49916461fa761c728a45ab9e76fff79adfad4c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125705.28793147998/UseSmileIDVisionFace.xcframework.zip",
            checksum: "24f65e23567dff15fb542cb7bd6e3d0ee62147269f0d7d07eae1043b1cfeb424"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260706125705.28793147998/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "580b0716ca82d79936c801711f195a8b81c572d9cb179f4dd0e76e357c0afc0f"
        ),
    ]
)

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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154049.28602618990/UseSmileID.xcframework.zip",
            checksum: "5d556b2a8959dcd8971b92ff7716f2111deb6758da1142fa1b95082f92eb6202"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154049.28602618990/UseSmileIDBridge.xcframework.zip",
            checksum: "42442ec6ddc477308fd565e33fc267de198607e7ce09b1f228e00fef428d5e5e"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154049.28602618990/UseSmileIDVisionFace.xcframework.zip",
            checksum: "41d775c927472a8f6273a28daf34c8b16bda2b91d030a5bb431c322969a3417f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260702154049.28602618990/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f563a0b50c0c5779fd9bd838be3d4c643e2dc7e6f32e29593e17066b3a4fa91e"
        ),
    ]
)

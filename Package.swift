// swift-tools-version: 5.9
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083652.27676504435/UseSmileID.xcframework.zip",
            checksum: "45d9fed955a0dec99a3f865c2097b5e29a5add925021f9249db64de7da86858c"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083652.27676504435/UseSmileIDBridge.xcframework.zip",
            checksum: "442082527499b007f3a37b2764de1ca4085ec768c4ac7fb6917becc6939fed2b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083652.27676504435/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3245a29c42c45ba38ee70c5f30aa278b50a0f192227bb7b3b6ef7a3cbd2a5561"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260617083652.27676504435/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "07864267094f2df4d108c4ba0b95504a896585c0fa13693777e83ca34ce2fc55"
        ),
    ]
)

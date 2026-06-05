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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130154.27016391247/UseSmileID.xcframework.zip",
            checksum: "c762035dd493fea126b94828c210a26d1b86b5dcc816d54f10d712b4899f7c78"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130154.27016391247/UseSmileIDBridge.xcframework.zip",
            checksum: "1131766dc89f5ad3911dcbecfc00c85dab10fccee0fd52e6a76bc319e3fd0444"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130154.27016391247/UseSmileIDVisionFace.xcframework.zip",
            checksum: "561058b3d203bb3eb2f679237ff81c5ad5593a9370c8f0f7711b4da9a9dd1a2d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605130154.27016391247/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "300723e57aa1431c44387f1f34f9d24decae72c2fd62a04b79406f0ebb2bff3f"
        ),
    ]
)

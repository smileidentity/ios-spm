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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614133142.27500437169/UseSmileID.xcframework.zip",
            checksum: "785f92152c0bcd59e621bbeaaf502c614a8fb73b7516a08501f1abb4c6bbd4b4"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614133142.27500437169/UseSmileIDBridge.xcframework.zip",
            checksum: "9b98c13b29d1275579dc0892aefff1eebe2673386158d1d967f8663868767852"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614133142.27500437169/UseSmileIDVisionFace.xcframework.zip",
            checksum: "92a6ce8f490602ad8e265ae634570de0c6478e108dab705f1fbb9cb90a49c0e3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260614133142.27500437169/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2b51079ab7a86a1aa5e0a9ffc0a63635821cc3b183eb08785c491cbf22569b9f"
        ),
    ]
)

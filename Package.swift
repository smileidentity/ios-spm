// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseSmileID",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "UseSmileID",
            targets: ["UseSmileID", "UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDML",
            targets: ["UseSmileIDML"]
        ),
        .library(
            name: "UseSmileIDVisionFace",
            targets: ["UseSmileIDVisionFace"]
        ),
        .library(
            name: "UseSmileIDVisionDocument",
            targets: ["UseSmileIDVisionDocument"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UseSmileID",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511161115.25682136032/UseSmileID.xcframework.zip",
            checksum: "f50bb4e61be6e61f41b652b5a0806949b7984151664bb7b4e24b19bd589ea8a0"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511161115.25682136032/UseSmileIDML.xcframework.zip",
            checksum: "3c4277414cbe499d35bdc5bd2ee3fcaa4394d21486ad972b9851fb693daf8558"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511161115.25682136032/UseSmileIDVisionFace.xcframework.zip",
            checksum: "3d81541a91f5b952352c9264854ae48a48a6e78e42c69e13edcecb62bbd8d684"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260511161115.25682136032/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "5ed84da9836fb4b62101bc54e86ed5d355dd70c1a57546b389afeb68f4f2eb79"
        ),
    ]
)

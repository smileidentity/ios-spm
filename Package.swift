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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415153513.24463517726/UseSmileID.xcframework.zip",
            checksum: "d85d691549b4d5d52a0de819da6929bfe357fbde5d9f780cbe032564c8e46ca7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415153513.24463517726/UseSmileIDML.xcframework.zip",
            checksum: "b8e0885421776a9b69f3a82104b10a7d832ed9abf6e9d48d70c8263285778d7d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415153513.24463517726/UseSmileIDVisionFace.xcframework.zip",
            checksum: "01e01b5e7a08ec01b234d4c0c82b8bbad349df22c3dc2e6dc33ef6521ca4e3b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260415153513.24463517726/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "ae7e936a587c63e616d9fedd840737ee00b63198f1817ea1d1ea1987a561ad74"
        ),
    ]
)

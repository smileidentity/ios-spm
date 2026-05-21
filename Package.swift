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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521114918.26224072968/UseSmileID.xcframework.zip",
            checksum: "3c9e9cbed17fb6bef8c06f156efe6fd8a3ff0ad50268e58812b51a40d4430492"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521114918.26224072968/UseSmileIDML.xcframework.zip",
            checksum: "cb8644eeb8fe9d5fe43fca85eeb45ea336b6d384f404b4a1f0d12e7fd7a824fb"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521114918.26224072968/UseSmileIDVisionFace.xcframework.zip",
            checksum: "910b478185e4d3a08af9f9b5816163402dbc89cbfa1f880b10a20bfa310de4b0"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521114918.26224072968/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "edcf213913c711bd7683341b5fe4eb32cf34afe4534a47a4061fb41f9afd0725"
        ),
    ]
)

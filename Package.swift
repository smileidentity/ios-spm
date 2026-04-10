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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410093409.24236503526/UseSmileID.xcframework.zip",
            checksum: "99796b10b65f89994d5a3529e3e0cef055744bee47d048437217c9e0c3d16de1"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410093409.24236503526/UseSmileIDML.xcframework.zip",
            checksum: "5539cb657fa1b307abb155f8fd605bb7a6fd6dc92e9bd51e88cbe939f62dca6d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410093409.24236503526/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a2522957464d54ee916ecdefa50b2df2daa05e5efda8d786b0502ff0bcced055"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260410093409.24236503526/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e01185ef4156ffe7bd6addc47f4d6b2148091fe86b1f7ef08d781724a5c9d1f9"
        ),
    ]
)

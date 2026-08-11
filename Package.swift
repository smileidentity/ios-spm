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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811124254.31492104885/UseSmileID.xcframework.zip",
            checksum: "702e9b87baaff8df062a6ab05617699680b9f78ae5144d7269378ff98c908cd1"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811124254.31492104885/UseSmileIDBridge.xcframework.zip",
            checksum: "e4a24ae464b370e30a398d967f402fa8db9a9d178c323a1a3c78dd8141728f67"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811124254.31492104885/UseSmileIDVisionFace.xcframework.zip",
            checksum: "5568ad654257e1aa311af279b716757f4f1b9508a5081630226c4feef08aac0b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.1-SNAPSHOT.20260811124254.31492104885/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "025255276953e9616951f7c540d0081a8ba62cc80c900833b65a768dbaee2495"
        ),
    ]
)

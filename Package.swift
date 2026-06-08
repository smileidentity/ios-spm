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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608083428.27125629437/UseSmileID.xcframework.zip",
            checksum: "9cc1e899817f9fbd8387f0657a1156a32cc65901b5b0c25e63e37e1a77cdd541"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608083428.27125629437/UseSmileIDBridge.xcframework.zip",
            checksum: "1c24ce3cd1f884663841d8ae60232863b2acdbd956083116e56c732da8cc7b6c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608083428.27125629437/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9e8ec6a7e05419e966815994fcdad10d8333f76ac48d8213bb98d1483f6e91b4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260608083428.27125629437/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "84ccb9b33be68fc6816ac7a02200dba8ee89caf5b6a1a4d80d2549372918a35b"
        ),
    ]
)

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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707111543.28861993997/UseSmileID.xcframework.zip",
            checksum: "b4a8b668b7f5f00aa9db5c6279d662a4bc899555f9d21283becd396f9a0399fc"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707111543.28861993997/UseSmileIDBridge.xcframework.zip",
            checksum: "7c7ea2c82877323ffb14e014c850f187db328ff44ddea7aae17ebc869a3ff731"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707111543.28861993997/UseSmileIDVisionFace.xcframework.zip",
            checksum: "0192f69736a126d90b2b252634eaa0f84ec2228e05a2931a2b6e2462a1289a1b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260707111543.28861993997/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "12a15967deb011177bf46b24a34d92d341a9b337b19c70c523a24298623f76df"
        ),
    ]
)

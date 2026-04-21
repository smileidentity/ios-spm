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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260421154817.24732112945/UseSmileID.xcframework.zip",
            checksum: "a1d73a1846e54446784baa385a70964cfd161a95a12b2e0727a20189fe94ec00"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260421154817.24732112945/UseSmileIDML.xcframework.zip",
            checksum: "d155fb420e1423ea5da9dde63376f46fff25d58951bacd7c61511559344cef0f"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260421154817.24732112945/UseSmileIDVisionFace.xcframework.zip",
            checksum: "ed313e0dcf898aa520a0857836194a04260d1b3dd37e33473e200ae77102ca3b"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260421154817.24732112945/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "dc10cd15ee64af0016af22da3c1378343a2d15c97a7ee8498b24b896d82c059c"
        ),
    ]
)

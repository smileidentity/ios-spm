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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090959.27941918664/UseSmileID.xcframework.zip",
            checksum: "3bc8561888bdd75580b3ce169e1412f291f99d5e5eaf0c980d84b3d72257125d"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090959.27941918664/UseSmileIDBridge.xcframework.zip",
            checksum: "89973a48a7814c07ae2fb1d810b88d2cb699d74e48b30f24f89a4275d9e4b2c4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090959.27941918664/UseSmileIDVisionFace.xcframework.zip",
            checksum: "2a0edf8923bdf257a709517cbd517208c0f1ac352b17308b168e012513981149"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260622090959.27941918664/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e9eb64ee7323a4e072385637e367720a733dfafac591c6aece6534ba6e4856ca"
        ),
    ]
)

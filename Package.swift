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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727143837.30275675205/UseSmileID.xcframework.zip",
            checksum: "8bd2bca444cf895a76032dd63ec05b3b785b0b191c66a0989e4dc22c033cc3d5"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727143837.30275675205/UseSmileIDBridge.xcframework.zip",
            checksum: "53bd7754d3b0eac5b46eac38b2cec4ef9afcda4e4bba63361a555347d98fe434"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727143837.30275675205/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a14a54036d3e3e5112e14e11b2b8e7146e319d05631bd1561e8c1bf7ece98584"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260727143837.30275675205/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "44c50e7bb825d258a2fa9a87c38d1cc4def86fbcadd0dd6048ed7d086fd77319"
        ),
    ]
)

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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155450.24898807337/UseSmileID.xcframework.zip",
            checksum: "8cf096f35ee980d31a907354478cdd6555057988c1327d8855e41ff05789f242"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155450.24898807337/UseSmileIDML.xcframework.zip",
            checksum: "f4e3f8a3669b781fe58182183cbb04f7d31cd0d0f07b11e62b7588dfc7569090"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155450.24898807337/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6a58b1a3570925846b219ebd4120fc4978ac17c128c931ece22d9152a3168dec"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424155450.24898807337/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c2a9c39beb56f0c7f9b247e25e43d74d55c6918c067fbf9753479b560dfdf286"
        ),
    ]
)

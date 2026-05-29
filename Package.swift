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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529052745.26619868239/UseSmileID.xcframework.zip",
            checksum: "cead63b14774926eac18ba1011051a578a105363c73155156366db84f120a98c"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260526083538.26441596566/UseSmileIDML.xcframework.zip",
            checksum: "5afdad4929a5406c2a00fdc1ff974e142bec0864453f969cbc6091b18e8e65d2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529052745.26619868239/UseSmileIDVisionFace.xcframework.zip",
            checksum: "29004ae8132d4d4d667345aae31e7b75fe2b62597e7a5dd0eeb100b6392946c9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260529052745.26619868239/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "92c0f637a2a1ce5d2a46cbafe99942ddb575e13c031eaf68cdcd596a0e307dbc"
        ),
    ]
)

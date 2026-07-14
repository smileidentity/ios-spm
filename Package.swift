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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714212128.29368965625/UseSmileID.xcframework.zip",
            checksum: "067b8bf75496888fd618df865af3253486745c8f3f568c7acb917720b3238aa3"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714212128.29368965625/UseSmileIDBridge.xcframework.zip",
            checksum: "02b6dd8182b3b0e9a49d706b9a4141bb866142fe1f4e195831dfe8039ed67011"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714212128.29368965625/UseSmileIDVisionFace.xcframework.zip",
            checksum: "b1d2dc6a45367b0134f579e37328022a03d81934d140d5785ebc2f2887f3c9b1"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714212128.29368965625/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "7faf1451a3482770f72b02d3edb2c66930f82710991fa9d8fa58284dacfaec31"
        ),
    ]
)

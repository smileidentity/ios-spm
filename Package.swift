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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606082634.27057411078/UseSmileID.xcframework.zip",
            checksum: "91cbb0702c11f35bd5bb21aedbeebcd9ab268daad5698ec92b5b15692f56edd7"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606082634.27057411078/UseSmileIDBridge.xcframework.zip",
            checksum: "cbc196cc5926de216e7da59215c87c6bf5d51e73a909e4c8ab6bf0aabdd7e6a4"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606082634.27057411078/UseSmileIDVisionFace.xcframework.zip",
            checksum: "05934c6cb88c7526a6fbbe12809a6f6f2bdabab05db5b37d199c7f6737f1078d"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260606082634.27057411078/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "3e851d9830464926827eb04e5fa9ef511b954637b213b9b8aa37b3bd8d2e2a72"
        ),
    ]
)

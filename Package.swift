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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605091432.27006373796/UseSmileID.xcframework.zip",
            checksum: "1da0c9f27d3b5d54162b1c6931a97c7abccc8c38409aefcc07eb7a5cc91df24a"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605091432.27006373796/UseSmileIDBridge.xcframework.zip",
            checksum: "bf799697e4c9c6507db103f155693df671543b006978b4ca18d2de2b22bfd8df"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605091432.27006373796/UseSmileIDVisionFace.xcframework.zip",
            checksum: "94a7402f366673eeae9fe31e9e5e0f08fbddcbb82872b18f77af9fb2bd350abe"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260605091432.27006373796/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "8d9c9960d11e738fc127b80f767afb3f12871e869e4fb05744f2ad4fb2d66b2b"
        ),
    ]
)

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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613115835.27466124970/UseSmileID.xcframework.zip",
            checksum: "be80df72712bde48e7ad9fc99e32969e22c1ef5367ceefacee576176bdb62d35"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613115835.27466124970/UseSmileIDBridge.xcframework.zip",
            checksum: "9e3333a3346581e409f0ad9926013d22ff79e96bdeb929233ceb7dd012f23ca3"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613115835.27466124970/UseSmileIDVisionFace.xcframework.zip",
            checksum: "47fea91e8c0b627964bbb9108c027c0b9df1254007ef4c64ba9b8c1248c4b425"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260613115835.27466124970/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "162952c52889e077dd6646f2c125c2b551bbc969224af9fcf103736c5e68062b"
        ),
    ]
)

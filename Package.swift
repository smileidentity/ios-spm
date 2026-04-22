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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422111927.24775429997/UseSmileID.xcframework.zip",
            checksum: "116afb404569cdfa5abc0f7e43ac234dd12103dabf7e3fae4d22e317e5de2fcd"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422111927.24775429997/UseSmileIDML.xcframework.zip",
            checksum: "8207e5b590830ad9659e93bef875b6685187950b3d839932630d261fe96b510c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422111927.24775429997/UseSmileIDVisionFace.xcframework.zip",
            checksum: "f8dd3c05347b61258b01ecf6526dd284fe1011a846b1fe456076b5a0c194d3e9"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260422111927.24775429997/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "caf367662c40bc83545e11c0426e63b06b729d82bb211c10a4c2ebfea306c41e"
        ),
    ]
)

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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402112900.23898208710/UseSmileID.xcframework.zip",
            checksum: "1f078db3a841b018c43ed2238a6d7bbc17f5659fc770414a64a6d8a9cc73843e"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402112900.23898208710/UseSmileIDML.xcframework.zip",
            checksum: "43fb0e0296c32abc96dd3a93f57550b14c9bd3380302326c9bc46400e654b593"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402112900.23898208710/UseSmileIDVisionFace.xcframework.zip",
            checksum: "9ad79f37e6f014512b41b0f55a9c4b32b8e4659ff6e84e2485632e6269a905ec"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402112900.23898208710/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "2e86c4ae5fbb0f1081f940fc4ec29bf7768cb12aa2b777dc4d06cb806828ecc0"
        ),
    ]
)

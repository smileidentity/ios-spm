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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402123435.23900601602/UseSmileID.xcframework.zip",
            checksum: "ee1ef59a07ee2985d727ad34af29cd3124bf4a8273859a928e188c54740e3d89"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402123435.23900601602/UseSmileIDML.xcframework.zip",
            checksum: "433ec977e0580aecc50f045c0e593e8bb42852a451a5a479c257635e9d743167"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402123435.23900601602/UseSmileIDVisionFace.xcframework.zip",
            checksum: "a0413490822e26279cbafa810dd70940468f78d10df1ab796013bb2c0b889c98"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402123435.23900601602/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "4db6492bc5126d1350b4c6888ab510b840efc2c455f1ecee36e517c651fd760f"
        ),
    ]
)

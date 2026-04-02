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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402202221.23920255940/UseSmileID.xcframework.zip",
            checksum: "8bac86aca96d7bd8c0a34534776ba775906afae55fdd9c59046b118b4f2e7079"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402202221.23920255940/UseSmileIDML.xcframework.zip",
            checksum: "ddc5e5edefc6b1016456a0fe95d0a83c4392b4d9392339124471bd575932f394"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402202221.23920255940/UseSmileIDVisionFace.xcframework.zip",
            checksum: "18b56347c4ce3876a42507cdbf09aa57394853e14b95efad8802b4775b1cf078"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260402202221.23920255940/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "f967bb585f01467a2e62969619cfa6325e584a26c7cfac6e4676ff01ea02f536"
        ),
    ]
)

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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525131710.26402474995/UseSmileID.xcframework.zip",
            checksum: "5556b9caea4bfc095da9e539a1e687edd3659729fef14daff76fefd19fd59b1f"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525131710.26402474995/UseSmileIDML.xcframework.zip",
            checksum: "6dc50aeb43064588790fbd4904774ce74843249c2dd830d381b31e013bcf1b87"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525131710.26402474995/UseSmileIDVisionFace.xcframework.zip",
            checksum: "6125c6c13624de07780264c2ee8b323f7386e8ea03addf9a99ff9a4e1cc2eac5"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260525131710.26402474995/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "c75d3b6769f419a899be0224651ebd1fcf20232397c391ca266899c66fe6ec7e"
        ),
    ]
)

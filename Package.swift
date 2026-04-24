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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110254.24886166425/UseSmileID.xcframework.zip",
            checksum: "ea7225de56399887b1ac985fb1209fe5bcbd6ecc22b3c90b1174dfc9659b588f"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110254.24886166425/UseSmileIDML.xcframework.zip",
            checksum: "fbd792e9aac81d44db94da7b799bb5f30a2ed53449c704eca4560530438fbb91"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110254.24886166425/UseSmileIDVisionFace.xcframework.zip",
            checksum: "540617fa9848c21654ecd94f6e24e54d7fa0075ff6cb778de04c6d92a36e8e74"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260424110254.24886166425/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "832b962fe28cf1332fffbee7a54be3cae14871747c20154e99f556a16c22df2d"
        ),
    ]
)

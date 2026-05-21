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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521123628.26226307425/UseSmileID.xcframework.zip",
            checksum: "9665ebbf70562d3f2d5714e084064be90a1ed36211e36bdc65d580ace7cacef7"
        ),
        .binaryTarget(
            name: "UseSmileIDML",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521123628.26226307425/UseSmileIDML.xcframework.zip",
            checksum: "db6f3e90646a431dd78347d42366ab0c4a4686df05f912c4a75a62619a136209"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521123628.26226307425/UseSmileIDVisionFace.xcframework.zip",
            checksum: "d27795f18bc48041c988980019ae43793bc762db257780b7f4779376492d9e75"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260521123628.26226307425/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "20131f0fcf7d3815e476206520380993b4466146b8292be7a68fa0e07b057950"
        ),
    ]
)

// swift-tools-version: 6.0
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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714164333.29350538056/UseSmileID.xcframework.zip",
            checksum: "fcd56f924a3e6fd26228cc7edfcca9d7f1fdbe3305a9db3e3c858ba145b1b477"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714164333.29350538056/UseSmileIDBridge.xcframework.zip",
            checksum: "07bd4f498c651fd65fee5eca08ad6c2224593b5a993bda03c8fcd04cde40db9c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714164333.29350538056/UseSmileIDVisionFace.xcframework.zip",
            checksum: "634e5b16bd1a02d9257f17bb95931d49192dfc29358e91de0fb89140ba7f8712"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-SNAPSHOT.20260714164333.29350538056/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "e54311cc4f861a8bd2442cd33149835dd23d6c873b76ad8d29df4ffeb833af57"
        ),
    ]
)

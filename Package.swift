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
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702122014.28589472289/UseSmileID.xcframework.zip",
            checksum: "5e10b75e061f1eee276f49080367e42dd96eaf92ef4732e4ea5319c3a8e134fb"
        ),
        .binaryTarget(
            name: "UseSmileIDBridge",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702122014.28589472289/UseSmileIDBridge.xcframework.zip",
            checksum: "7651d791e42d70af095534377a35b46129ea41f50ba35c39980995711e69595c"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionFace",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702122014.28589472289/UseSmileIDVisionFace.xcframework.zip",
            checksum: "141c40c656f151e9ea652ac90586b3ae0a4e53a1d80cf075e7718cd6874025f2"
        ),
        .binaryTarget(
            name: "UseSmileIDVisionDocument",
            url: "https://github.com/smileidentity/ios-spm/releases/download/v12.0.0-beta01-SNAPSHOT.20260702122014.28589472289/UseSmileIDVisionDocument.xcframework.zip",
            checksum: "1de3de04b3b5be80a1965029cd1451bcd1337dd6449ecc575b8f7329df42db02"
        ),
    ]
)

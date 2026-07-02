# Smile ID iOS SDK — Swift Package

[![Release](https://img.shields.io/github/v/release/smileidentity/ios-spm?label=release&logo=swift&logoColor=white&color=success)](https://github.com/smileidentity/ios-spm/releases/latest)
[![Snapshot](https://img.shields.io/github/v/release/smileidentity/ios-spm?include_prereleases&sort=date&label=snapshot&logo=github&logoColor=white&color=blue)](https://github.com/smileidentity/ios-spm/releases)
[![iOS](https://img.shields.io/badge/iOS-15.0%2B-blue?logo=apple&logoColor=white)](#requirements)
[![Swift](https://img.shields.io/badge/Swift-6.0%2B-F05138?logo=swift&logoColor=white)](#requirements)
[![Xcode](https://img.shields.io/badge/Xcode-16%2B-147EFB?logo=xcode&logoColor=white)](#requirements)

Swift Package Manager distribution for the **Smile ID iOS SDK (v12)**. This repository hosts the
`Package.swift` manifest and the pre-built XCFramework binaries that partner apps integrate against.
The SDK lets you embed identity-verification flows into your SwiftUI app using a type-safe DSL builder.

## Requirements

- iOS 15.0+
- Swift 6.0+ (Xcode 16+)

## Installation

### Swift Package Manager

In Xcode, choose **File → Add Package Dependencies…** and enter:

```
https://github.com/smileidentity/ios-spm
```

Or add it to your own `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/smileidentity/ios-spm", from: "12.0.0")
]
```

Then add the `UseSmileID` product to your target's dependencies.

> **Pre-release builds:** to track the rolling snapshot instead of a tagged release, depend on the
> `snapshot` branch:
>
> ```swift
> .package(url: "https://github.com/smileidentity/ios-spm", branch: "snapshot")
> ```

## Products

| Product | Use it for |
|---------|------------|
| `UseSmileID` | Core SDK — UI flows, the DSL builder, networking, capture. Start here; it includes `UseSmileIDBridge`. |
| `UseSmileIDBridge` | ML abstractions and shared model types (transitively included by `UseSmileID`). |
| `UseSmileIDVisionFace` | Apple Vision face-detection analyzer. |
| `UseSmileIDVisionDocument` | Apple Vision document-detection analyzer. |

Most integrations only need `UseSmileID`. Add the `UseSmileIDVision*` products if you wire up the
Vision-based analyzers directly.

```swift
import SwiftUI
import UseSmileID
```

## Documentation

Integration guides and API documentation are available in the [Smile ID documentation](https://docs.usesmileid.com).

## License

Released under the MIT License. See [LICENSE](LICENSE).

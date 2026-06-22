# Smile ID iOS SDK — Swift Package

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
    .package(url: "https://github.com/smileidentity/ios-spm", exact: "12.0.0-beta01")
]
```

Then add the `UseSmileID` product to your target's dependencies.

> **Beta:** `12.0.0-beta01` is a pre-release. Pin it with `exact:` as shown — Swift Package Manager
> does not select pre-release versions through `from:`. To track the latest beta build instead,
> depend on the rolling `snapshot` branch:
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

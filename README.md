# Amazon Publisher Services SDK — Swift Package Manager

Swift Package Manager distribution for the Amazon Publisher Services (APS) iOS SDK. The XCFramework itself is hosted on Amazon CloudFront; this repository provides the `Package.swift` manifest and a thin wrapper target that declares the system frameworks required by the SDK.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Swift 5.7+

## Installation

**Xcode**

1. File → Add Package Dependencies…
2. Enter `https://github.com/amzn/swift-package-manager-amazon-aps.git`
3. Select "Up to Next Major Version" from `5.6.6`.
4. Add the `AmazonPublisherServicesSDK` product to your app target.

**Package.swift**

```swift
.package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", from: "5.6.6")
```

Then add the product to your target:

```swift
.product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps")
```

## Usage

```objc
// Objective-C
#import <DTBiOSSDK/DTBiOSSDK.h>
```

```swift
// Swift
import DTBiOSSDK
```

`AmazonPublisherServicesSDK` is the SPM **product** (what you attach in Xcode); `DTBiOSSDK` is the **module** you `import` in code.

## `-ObjC` linker flag

DTBiOSSDK is an Objective-C framework. CocoaPods sets `-ObjC` automatically; SPM does not. If you observe missing selectors or categories at runtime, add `-ObjC` to **Build Settings → Other Linker Flags** for your app target.

## Mediation adapters

Adapters live in separate repositories:

- [`swift-package-manager-amazon-aps-admob`](https://github.com/amzn/swift-package-manager-amazon-aps-admob) — Google AdMob
- [`swift-package-manager-amazon-aps-inmobi`](https://github.com/amzn/swift-package-manager-amazon-aps-inmobi) — InMobi
- [`swift-package-manager-amazon-aps-mobilefuse`](https://github.com/amzn/swift-package-manager-amazon-aps-mobilefuse) — MobileFuse
- [`swift-package-manager-amazon-aps-verve`](https://github.com/amzn/swift-package-manager-amazon-aps-verve) — Verve (HyBid)

Adding an adapter package transitively pulls in this SDK; you do not need to add both.

## License

Apache License 2.0. See [LICENSE](./LICENSE).

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AmazonPublisherServicesSDK", targets: ["APSSDKTarget"])
    ],
    targets: [
        .target(
            name: "APSSDKTarget",
            dependencies: ["DTBiOSSDK"],
            path: "Sources/APSSDKTarget",
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("StoreKit"),
                .linkedFramework("QuartzCore")
            ]
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_SDK_SPM/APS_iOS_SDK-5.6.6.zip",
            checksum: "019aa458f79c57bfd44ee41f8b3292e93bad90f05d30f5307f4c20d78e229a31"
        )
    ]
)

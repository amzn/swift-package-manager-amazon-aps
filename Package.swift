// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesSDK",
    platforms: [.iOS(.v15)],
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
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_SDK_SPM/APS_iOS_SDK-5.7.0.zip",
            checksum: "4e7d26ed0e5942d0879fb0604eba850b9da2394844a4ed307b411acaec200c21"
        )
    ]
)

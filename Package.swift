// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Foso/KMMBridgeKickStart/de/jensklingenberg/kmmtest/allshared-kmmbridge/0.1.2/allshared-kmmbridge-0.1.2.zip"
let remoteKotlinChecksum = "0d2ab4fa63de93bf1bf502fccac3c14f5a0cd3ad807cc5cc00da696eb1506742"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)
// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Foso/KMMBridgeKickStart/de/jensklingenberg/kmmtest/allshared-kmmbridge/0.1.3/allshared-kmmbridge-0.1.3.zip"
let remoteKotlinChecksum = "0ab3657558324be5cbcd6a1dfd754458ddde90f125dadb897caf13de70b290c1"
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
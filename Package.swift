// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Foso/KMMBridgeKickStart/de/jensklingenberg/kmmtest/allshared-kmmbridge/0.4.1/allshared-kmmbridge-0.4.1.zip"
let remoteKotlinChecksum = "2bb118841415c4c63c28666f4a739044ce1fb3c08d0b6f24ef911640bec255ef"
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
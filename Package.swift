// swift-tools-version:"0.1.0"
// version: "0.1.0"

import PackageDescription

let package = Package(
    name: "NoctuaSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "NoctuaSDK",
            targets: ["NoctuaSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "11.6.0")
    ],
    targets: [
        .target(
            name: "NoctuaSDK",
            dependencies: [
                "FBSDKCoreKit_Basics",
                "FBAEMKit",
                "FBSDKCoreKit",
                
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseMessaging", package: "firebase-ios-sdk")
            ],
            path: "NoctuaSDK/Sources"
        ),
        
        .binaryTarget(
            name: "FBSDKCoreKit_Basics",
            path: "NoctuaSDK/XCFrameworks/FBSDKCoreKit_Basics.xcframework"
        ),
        .binaryTarget(
            name: "FBAEMKit",
            path: "NoctuaSDK/XCFrameworks/FBAEMKit.xcframework"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit",
            path: "NoctuaSDK/XCFrameworks/FBSDKCoreKit.xcframework"
        )
    ]
)

# Noctua Native SDK for iOS

The official Noctua Native SDK for iOS by NoctuaLabs, designed to support analytics and event tracking with seamless integration via Swift Package Manager.

---

## 📦 Installation (Swift Package Manager)

Use the GitHub repo as a package dependency in Xcode:

1. Open your project in Xcode.
2. Go to **File > Add Packages…**
3. Enter the URL: https://github.com/NoctuaLabs/noctua-native-sdk-ios.git
4. Choose the latest version (e.g. `0.1.0`) and finish the setup

### Or add to `Package.swift`

```swift
.package(
url: "https://github.com/NoctuaLabs/noctua-native-sdk-ios.git",
from: "0.1.0"
)

.target(
  name: "YourApp",
  dependencies: [
    .product(name: "NoctuaSDK", package: "noctua-native-sdk-ios")
  ]
)

.target(
  name: "YourApp",
  dependencies: [
    .product(name: "NoctuaSDK", package: "noctua-native-sdk-ios")
  ]
)


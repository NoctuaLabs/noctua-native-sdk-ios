# Noctua iOS SDK

## Development

- Your work email should be tied to the provisioning profile for development.  
  Please login with your work email in **Xcode → Settings → Accounts**.
- This SDK uses **Swift Package Manager** only.  
  No need to run `pod install` — just open the project directly with Xcode.

---

## Manual Release Guide

### 1. Bump and Tag Version

```sh
# Replace x.y.z with the new version you want to release
NEW_VERSION="x.y.z"

# Update version in Package.swift
sed -i '' "s/\\(version: *\\).*/\\1\"$NEW_VERSION\",/" Package.swift

# Commit and tag the new release
git add Package.swift
git commit -m "Release v$NEW_VERSION"
git tag -a "ios-sdk-v$NEW_VERSION" -m "Release ios-sdk-v$NEW_VERSION"
git tag -a "v$NEW_VERSION" -m "SPM-compatible tag"

# Push to GitLab and GitHub
git push origin HEAD --follow-tags
git push origin "v$NEW_VERSION"

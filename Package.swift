// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "IPv6Support",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "IPv6Support",
            targets: ["IPv6SupportWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "IPv6SupportWrapper",
            dependencies: [
                .byName(name: "IPv6Support"),
                .product(name: "UnityBridge", package: "UnityBridge"),
            ],
            path: "IPv6SupportWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "IPv6Support",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/IPv6Support/2.0.0-dev-1446422/IPv6Support.xcframework.zip",
            checksum: "8fbdd80ed6647c0fa1f1de9f1ce8cb15704544dfb4ca4a2fe33cf6871a17b053"
        )
    ]
)

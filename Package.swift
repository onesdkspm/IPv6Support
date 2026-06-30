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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/IPv6Support/1.0.4-dev-1474900/IPv6Support.xcframework.zip",
            checksum: "7d9d62dea8d696ece58d0f19fd6b4654a4ca1d774d0c77f4f33e10b259e32573"
        )
    ]
)

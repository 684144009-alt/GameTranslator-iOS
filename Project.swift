import ProjectDescription

let project = Project(
    name: "GameTranslator",
    targets: [
        Target(
            name: "GameTranslator",
            destinations: .appleDevice,
            product: .app,
            bundleId: "com.yourname.translator", // เปลี่ยน yourname เป็นชื่อคุณ
            infoPlist: .default,
            sources: ["Targets/GameTranslator/Sources/**"],
            dependencies: []
        ),
        Target(
            name: "TranslatorExtension",
            destinations: .appleDevice,
            product: .appExtension,
            bundleId: "com.yourname.translator.extension",
            infoPlist: .extendingDefault(with: [
                "NSExtension": [
                    "NSExtensionPointIdentifier": "com.apple.broadcast-services-upload",
                    "NSExtensionPrincipalClass": "TranslatorExtension.SampleHandler"
                ],
                "RPBroadcastProcessMode": "RPBroadcastProcessModeSampleBuffer"
            ]),
            sources: ["Targets/TranslatorExtension/Sources/**"],
            dependencies: []
        )
    ]
)

//
//  Created by yuki.noseda on 2023/07/11.
//

import AppIntents

struct OpenAppShortcuts: AppShortcutsProvider {
    static var shortcutTileColor: ShortcutTileColor = .orange

    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: OpenAppIntent(),
            phrases: [
                "\(.applicationName)を開く",
                "\(.applicationName)を起動する",
                "open \(.applicationName)"
            ],
            shortTitle: "UILibraries（UIライブラリ）を開く",
            systemImageName: "arrow.up.circle.fill"
        )
    }
}

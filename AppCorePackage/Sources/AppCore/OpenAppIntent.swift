//
//  Created by yuki.noseda on 2023/07/11.
//

import AppIntents

struct OpenAppIntent: AppIntent {
    static var openAppWhenRun = true

    static let title: LocalizedStringResource = "UIライブラリを開く"

    @MainActor
    func perform() async throws -> some IntentResult {
        .result()
    }
}

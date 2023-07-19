//
//  Created by yuki.noseda on 2023/07/19.
//

import SwiftUI

public enum RootSceneFactory {
    @SceneBuilder @MainActor
    public static func create() -> some Scene {
        WindowGroup(id: WindowGroupID.home.id) {
            RootView()
        }
    }
}

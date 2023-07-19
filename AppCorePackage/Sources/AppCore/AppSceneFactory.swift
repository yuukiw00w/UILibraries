//
//  Created by yuki.noseda on 2023/07/19.
//

import SwiftUI

public enum AppSceneFactory {
    @SceneBuilder @MainActor
    public static func create() -> some Scene {
        WindowGroup(id: WindowGroupID.home.id) {
            RootView()
        }
        WindowGroup(id: WindowGroupID.contents.id) {
            List {
                HStack(content: {
                    Text("test1")
                })
                HStack(content: {
                    Text("test2")
                    Image(systemName: "square.and.arrow.up")
                })
                HStack(content: {
                    Text("test3")
                })
            }
        }
    }
}

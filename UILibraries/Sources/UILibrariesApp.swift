//
//  Created by Yuki Noseda on 2023/07/01.
//

import AppCore
import SwiftUI

@main
struct UILibrariesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate

    var body: some Scene {
        AppCore.AppSceneFactory.create()
    }
}

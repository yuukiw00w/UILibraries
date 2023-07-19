//
//  Created by Yuki Noseda on 2023/07/09.
//

import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    func scene(
        _: UIScene,
        willConnectTo _: UISceneSession,
        options _: UIScene.ConnectionOptions
    ) {}

    func sceneDidDisconnect(
        _: UIScene
    ) {}
}

public final class AppDelegate: NSObject, UIApplicationDelegate {
    public func application(
        _: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options _: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let config = UISceneConfiguration(
            name: nil,
            sessionRole: connectingSceneSession.role
        )
        config.delegateClass = SceneDelegate.self
        return config
    }
}

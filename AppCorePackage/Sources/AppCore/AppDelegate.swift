//
//  Created by Yuki Noseda on 2023/07/09.
//

import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        print("\(scene.debugDescription), continue: \(userActivity.debugDescription)")
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("\(scene.debugDescription), willConnectTo: \(session.debugDescription), options: \(connectionOptions.debugDescription)")
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("sceneDidDisconnect(\(scene.debugDescription))")
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive(\(scene.debugDescription))")
    }
}

public final class AppDelegate: NSObject, UIApplicationDelegate {
    
    public func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let config = UISceneConfiguration(
            name: nil,
            sessionRole: connectingSceneSession.role
        )
        config.delegateClass = SceneDelegate.self
        print("application(\(application), configurationForConnecting: \(connectingSceneSession), options: \(options))")
        return config
    }
    
    public func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive(\(application))")
    }
}

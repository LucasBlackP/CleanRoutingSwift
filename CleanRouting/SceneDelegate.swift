//
//  SceneDelegate.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 11/07/2021.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let mainRouter = MainRouter(rootTransition: EmptyTransition())
        let tabs = [mainRouter.makeOrdersTab()]

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = MainTabBarController(viewControllers: tabs)
        window?.makeKeyAndVisible()
/*
        if let urlContext = connectionOptions.urlContexts.first {
            deeplink(urlContext.url)
        }
 */
    }
}


//
//  AppCoordinator.swift
//  MyCoordinatorApp
//
//  Created by Mario Heberthardt on 15/10/2022.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var window: UIWindow?
    let scene: UIScene?
    
    init(window: UIWindow?, scene: UIScene?) {
        self.window = window
        self.scene = scene
    }
    
    func start() {
        guard let winScene = (scene as? UIWindowScene) else { return }
            window = UIWindow(windowScene: winScene)
            window?.rootViewController = ViewController()
            window?.makeKeyAndVisible()
        
        //let startCoordinator = startCoordinator(navigationController: navigationController)
        //coordinate(to: startCoordinator)
    }
}

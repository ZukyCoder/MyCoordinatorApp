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
    
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        
        let mainCoordinator = MainCoordinator(controller: navigationController)
                coordinate(to: mainCoordinator)
        
    }
}

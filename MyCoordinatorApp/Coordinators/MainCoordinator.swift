//
//  MainCoordinator.swift
//  MyCoordinatorApp
//
//  Created by Mario Heberthardt on 19/10/2022.
//

import Foundation
import UIKit

protocol StartFlow: AnyObject {
    func coordinateToTabBar()
}

class MainCoordinator: Coordinator, StartFlow {
    let viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func start() {
        let mainController = MainController()
        mainController.coordinator = self
        viewController.show(mainController, sender: nil)
    }
    
    // MARK: - Flow Methods
    func coordinateToTabBar() {
        
    }
}

//
//  MainCoordinator.swift
//  MyCoordinatorApp
//
//  Created by Mario Heberthardt on 19/10/2022.
//

import Foundation
import UIKit

protocol StartFlow: AnyObject {
    func goToTabMaincontroller()
    func goToRedViewController()
    func goToBlueViewController()
    func goToYellowViewController()
    func backToRoot()
}

class MainCoordinator: Coordinator, StartFlow {
    
    let Controller: UINavigationController
    
    init(controller: UINavigationController) {
        self.Controller = controller
    }
    
    func start() {
        Controller.dismiss(animated: false) {
            self.goToTabMaincontroller()
        }
    }
    
    // MARK: - Flow Methods
    func goToTabMaincontroller() {
        let vc = MainController()
        vc.coordinator = self
        Controller.setViewControllers([vc], animated: false)
    }
    
    func goToRedViewController() {
        let redController = RedViewController()
        redController.coordinator = self
        Controller.pushViewController(redController, animated: true)
    }
    
    func goToBlueViewController() {
        let blueController = BlueViewController()
        blueController.coordinator = self
        Controller.pushViewController(blueController, animated: true)
    }
    
    func goToYellowViewController() {
        let yellowController = YellowViewController()
        yellowController.coordinator = self
        Controller.pushViewController(yellowController, animated: true)
    }
    
    func backToRoot() {
        Controller.popToRootViewController(animated: true)
    }
}

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
        print("RED")
        let redController = RedViewController()
        redController.modalPresentationStyle = .fullScreen
        redController.coordinator = self
        Controller.pushViewController(redController, animated: true)
    }
    
    func goToBlueViewController() {
        print("BLUE")
        let blueController = BlueViewController()
        blueController.modalPresentationStyle = .fullScreen
        blueController.coordinator = self
        Controller.pushViewController(blueController, animated: true)
    }
    
    func goToYellowViewController() {
        print("YELLOW")
        let yellowController = YellowViewController()
        yellowController.modalPresentationStyle = .fullScreen
        yellowController.coordinator = self
        Controller.pushViewController(yellowController, animated: true)
    }
}

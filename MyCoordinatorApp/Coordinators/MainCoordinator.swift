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
        let mainController = MainController()
        mainController.coordinator = self
        mainController.modalPresentationStyle = .overFullScreen
        Controller.present(mainController, animated: true)
    }
    
    // MARK: - Flow Methods
    func goToTabMaincontroller() {
        Controller.popToRootViewController(animated: true)
    }
    
    func goToRedViewController() {
        let redController = RedViewController()
        redController.modalPresentationStyle = .fullScreen
        redController.coordinator = self
        Controller.showDetailViewController(redController, sender: nil)
    }
    
    func goToBlueViewController() {
        let blueController = BlueViewController()
        blueController.modalPresentationStyle = .fullScreen
        blueController.coordinator = self
        Controller.showDetailViewController(blueController, sender: nil)
    }
    
    func goToYellowViewController() {
        let yellowController = YellowViewController()
        yellowController.modalPresentationStyle = .fullScreen
        yellowController.coordinator = self
        Controller.showDetailViewController(yellowController, sender: nil)
    }
}

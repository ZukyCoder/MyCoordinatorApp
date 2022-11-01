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
    func goToTabMaincontroller() {
        let mainController = MainController()
        mainController.modalPresentationStyle = .fullScreen
        mainController.coordinator = self
        viewController.showDetailViewController(mainController, sender: nil)
    }
    
    func goToRedViewController() {
        let redController = RedViewController()
        redController.modalPresentationStyle = .fullScreen
        redController.coordinator = self
        viewController.showDetailViewController(redController, sender: nil)
    }
    
    func goToBlueViewController() {
        let blueController = BlueViewController()
        blueController.modalPresentationStyle = .fullScreen
        blueController.coordinator = self
        viewController.showDetailViewController(blueController, sender: nil)
    }
    
    func goToYellowViewController() {
        let yellowController = YellowViewController()
        yellowController.modalPresentationStyle = .fullScreen
        yellowController.coordinator = self
        viewController.showDetailViewController(yellowController, sender: nil)
    }
}

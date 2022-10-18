//
//  Coordinator.swift
//  MyCoordinatorApp
//
//  Created by Mario Heberthardt on 15/10/2022.
//

import Foundation
import UIKit

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}

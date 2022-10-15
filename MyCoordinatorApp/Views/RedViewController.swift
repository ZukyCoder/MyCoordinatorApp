//
//  RedViewController.swift
//  MyCoordinatorApp
//
//  Created by Mario Heberthardt on 15/10/2022.
//

import UIKit

class RedViewController: UIViewController {

    lazy var mainStackView:UIStackView = {
        let stack = UIStackView(arrangedSubviews: [basicButton1, basicButton2, basicButton3])
        stack.backgroundColor = .systemGray
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var basicButton1:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.setTitle("Go to Main ViewController", for: .normal)
        button.tintColor = .black
        button.tag = 1
        return button
    }()
    
    lazy var basicButton2:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Go to Blue ViewController", for: .normal)
        button.tintColor = .black
        button.tag = 2
        return button
    }()
    
    lazy var basicButton3:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemYellow
        button.setTitle("Go to Yellow ViewController", for: .normal)
        button.tintColor = .black
        button.tag = 3
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupView()
    }

    func setupView() {
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainStackView.heightAnchor.constraint(equalToConstant: 500).isActive = true
    }

}

//
//  BlueViewController.swift
//  MyCoordinatorApp
//
//  Created by Mario Heberthardt on 15/10/2022.
//

import UIKit

class BlueViewController: UIViewController, UINavigationBarDelegate {
    var coordinator: StartFlow?
    
    private let navigationBarView: UINavigationBar = {
        let nav = UINavigationBar(frame: .zero)
        nav.backgroundColor = .systemGray2
        return nav
    }()

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
        button.backgroundColor = .systemRed
        button.setTitle("Go to Red ViewController", for: .normal)
        button.tintColor = .black
        button.tag = 1
        button.addTarget(self, action: #selector(willShowRedViewController), for: .touchUpInside)
        return button
    }()
    
    lazy var basicButton2:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.setTitle("Go to Main ViewController", for: .normal)
        button.tintColor = .black
        button.tag = 2
        button.addTarget(self, action: #selector(willShowMainViewController), for: .touchUpInside)
        return button
    }()
    
    lazy var basicButton3:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemYellow
        button.setTitle("Go to Yellow ViewController", for: .normal)
        button.tintColor = .black
        button.tag = 3
        button.addTarget(self, action: #selector(willShowYellowViewController), for: .touchUpInside)
        return button
    }()
    
    @objc func willShowRedViewController() {
        coordinator?.goToRedViewController()
    }
    
    @objc func willShowMainViewController() {
        coordinator?.backToRoot()
    }

    @objc func willShowYellowViewController() {
        coordinator?.goToYellowViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBarView.delegate = self
        setNavBar()
        self.title = "BLUE VIEW"
        view.backgroundColor = .systemBlue
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

extension BlueViewController {
    func setNavBar() {
        let navBar = navigationBarView
        view.addSubview(navBar)

        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        navBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

//
//  ViewController.swift
//  IndividualApp
//
//  Created by Filip Henriksson on 2024-06-10.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpBottomBar()
    }
    
    func setUpBottomBar() {
        let bottomBar = UIView()
        bottomBar.backgroundColor = .systemGray
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomBar)
        
        NSLayoutConstraint.activate([
            bottomBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomBar.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        addButtons(to: bottomBar)
    }
    
    func addButtons(to bottomBar: UIView) {
        
        let button1 = UIButton(type: .system)
        button1.setImage(UIImage(systemName: "star.fill"), for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
        
        let button2 = UIButton(type: .system)
        button2.setImage(UIImage(systemName: "star.fill"), for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.addTarget(self, action: #selector(didTapButton2), for: .touchUpInside)

        
        let button3 = UIButton(type: .system)
        button3.setImage(UIImage(systemName: "star.fill"), for: .normal)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.addTarget(self, action: #selector(didTapButton3), for: .touchUpInside)

        
        let stackView = UIStackView(arrangedSubviews: [button1, button2, button3])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomBar.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: bottomBar.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: bottomBar.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: bottomBar.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomBar.bottomAnchor)
        ])
    }
    
    @objc func didTapButton1() {
        let vcOne = ListViewController()
        self.navigationController?.pushViewController(vcOne, animated: false)
    }
    
    @objc func didTapButton2() {
        let vcTwo = ButtonImageViewController()
        self.navigationController?.pushViewController(vcTwo, animated: false)
    }
    
    @objc func didTapButton3() {
        let vcThree = ScrollListViewController()
        self.navigationController?.pushViewController(vcThree, animated: false)
    }

}


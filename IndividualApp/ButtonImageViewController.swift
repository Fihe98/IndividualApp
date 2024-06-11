//
//  ButtonImageViewController.swift
//  IndividualApp
//
//  Created by Filip Henriksson on 2024-06-10.
//

import UIKit

class ButtonImageViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Tap to view image", for: .normal)
        button.layer.cornerRadius  = 7
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = .white
        
        self.view.addSubview(button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 44),


        ])
    }
    
    @objc func didTapButton() {
        let vcOne = ImageViewController()
        self.navigationController?.pushViewController(vcOne, animated: false)
    }
}

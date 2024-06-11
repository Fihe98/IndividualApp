//
//  DetailViewController.swift
//  IndividualApp
//
//  Created by Filip Henriksson on 2024-06-10.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        if let selectedString = selectedString {
            self.title = selectedString
        }
    }
}

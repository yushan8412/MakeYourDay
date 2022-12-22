//
//  DogViewController.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import Foundation
import UIKit

class DogViewController: UIViewController {
    
    var topTitle: UILabel = {
        let lb = UILabel()
        lb.text = "one dog a day, smiling everyday "
        return lb
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .systemMint
        view.addSubview(topTitle)
        setupUI()
    }
    
    func setupUI() {
        topTitle.anchor(top: view.topAnchor, paddingTop: 80)
        topTitle.centerX(inView: view)
    }
}


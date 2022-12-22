//
//  JokeViewController.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import Foundation
import UIKit

class JokeViewController: UIViewController {
    
    var topTitle: UILabel = {
        let lb = UILabel()
        lb.text = "bad joke ever!".uppercased()
        return lb
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        view.addSubview(topTitle)
        setupUI()
    }
    
    func setupUI() {
        topTitle.anchor(top: view.topAnchor, paddingTop: 80)
        topTitle.centerX(inView: view)
    }
}

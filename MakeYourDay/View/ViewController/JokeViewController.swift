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
    
    var jokeData = JokeData()
    
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        view.addSubview(topTitle)
        setData()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        setData()
    }
    
    func setupUI() {
        topTitle.anchor(top: view.topAnchor, paddingTop: 80)
        topTitle.centerX(inView: view)
    }
    
    func setData() {
        JokeApiManager.shared.fetchJokeData { result in
            switch result {
            case .success(let data):
                self.jokeData = data
                print(self.jokeData)
            case .failure(let error):
                print(error)
            }
        }
    }
    
}

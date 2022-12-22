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
    
    var dogFact = DogFact()
    var dogPic = DogPic()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemMint
        view.addSubview(topTitle)
        setupData()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        setupData()
    }
    
    func setupUI() {
        topTitle.anchor(top: view.topAnchor, paddingTop: 80)
        topTitle.centerX(inView: view)
    }
    
    func setupData() {
        DogApiManager.shared.fetchDogFact { result in
            switch result {
            case .success(let data):
                self.dogFact = data
                print(self.dogFact)
            case .failure(let error):
                print("==============\(error)")
            }
        }
        
        DogApiManager.shared.fetchDogPic { result in
            switch result {
            case .success(let data):
                self.dogPic = data
                print(self.dogPic)
            case .failure(let error):
                print(error)
            }
        }
    }
    
}


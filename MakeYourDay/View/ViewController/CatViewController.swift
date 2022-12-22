//
//  CatViewController.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import Foundation
import UIKit

class CatViewController: UIViewController {
    
    var topTitle: UILabel = {
        let lb = UILabel()
        lb.text = "knowledge about cat".uppercased()
        return lb
    }()
    
    var catFactData = CatFact()
    var catPicData = [CatPic]()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        view.addSubview(topTitle)
        setupUI()
        setupData()
        setupPicData()
    }
    
    func setupUI() {
        topTitle.anchor(top: view.topAnchor, paddingTop: 80)
        topTitle.centerX(inView: view)
    }
    
    func setupData() {
        ApiManager.shared.fetchCatFactData { result in
            switch result {
            case .failure:
                print("Error")
            case .success(let data):
                self.catFactData = data
                print(self.catFactData)
            }
        }
    }
    
    func setupPicData() {
        ApiManager.shared.fetchCatPic { result in
            switch result {
            case .success(let data):
                self.catPicData = data
                print(self.catPicData)
            case .failure:
                print("Error")
            }
        }
    }
}


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
    
    var image = UIImageView()
    
    var catFactData = CatFact()
    var catPicData = [CatPic]()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
//        setupUI()
//        setupData()
//        setupPicData()
    }
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
        setupData()
        setupPicData()

    }

    
    func setupUI() {
        view.addSubview(topTitle)
        view.addSubview(image)
        topTitle.anchor(top: view.topAnchor, paddingTop: 80)
        topTitle.centerX(inView: view)
        image.center(inView: view)
        image.anchor(width: 300, height: 250)
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 20
    }
    
    func setupData() {
        CatApiManager.shared.fetchCatFactData { result in
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
        CatApiManager.shared.fetchCatPic { result in
            switch result {
            case .success(let data):
                self.catPicData = data
                guard let imageUrl = URL(string: self.catPicData[0].url) else { return }
                self.image.load(url: imageUrl)
            case .failure:
                print("Error")
            }
        }
    }
    
}


//
//  MissionViewController.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import Foundation
import UIKit

class MissionViewController: UIViewController {
    
    var topTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Daily mission" .uppercased()
        return lb
    }()
    
    var missionData = MissionData()
    
    
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
        MissionApiManager.shared.fetchMissionData { result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let data):
                self.missionData = data
                print(self.missionData)
            }
        }
    }
}


//
//  ViewController.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/20.
//

import UIKit

class HomePageViewController: UIViewController {
    
    //MARK: - Property
    
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bottonBGView: UIView!
    @IBOutlet weak var btnStackView: UIStackView!
    
    @IBOutlet weak var catBtn: MainLButton!
    @IBOutlet weak var dogBtn: MainLButton!
    @IBOutlet weak var missionBtn: MainLButton!
    @IBOutlet weak var jokeBtn: MainLButton!
    
    // Action
    @IBAction func tapCatBtn(_ sender: Any) {
        print("tapped")
        let vc = CatViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapDogBtn(_ sender: Any) {
        print("tapped")
        let vc = DogViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapMissionBtn(_ sender: Any) {
        print("tapped")
        let vc = MissionViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapJokeBtn(_ sender: Any) {
        print("tapped")
        let vc = JokeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Helper
    
    func setupUI() {
        topImage.image = UIImage(named: "beach")
        topImage.contentMode = .scaleToFill
        
        catBtn.mainImage.image = UIImage(named: "cat")
        catBtn.mainImage.contentMode = .scaleAspectFill
        
        dogBtn.mainImage.image = UIImage(named: "dog")
        dogBtn.mainImage.contentMode = .scaleAspectFill
        
        missionBtn.mainImage.image = UIImage(named: "mission")
        missionBtn.mainImage.contentMode = .scaleAspectFill
        
        jokeBtn.mainImage.image = UIImage(named: "joke")
        jokeBtn.mainImage.contentMode = .scaleAspectFill

    }
}
    
// MARK: - 本來想要用 code 寫
//    func setupUI() {
//        view.addSubview(topView)
//        view.addSubview(topLabel)
//        view.addSubview(contentView)
//        topView.image = UIImage(named: "beach")
//        topView.anchor(top: view.topAnchor, left: view.leftAnchor,
//                       right: view.rightAnchor, paddingTop: 0, paddingLeft: 0,
//                       paddingRight: 0, height: 300)
//        topLabel.anchor(top: view.topAnchor, paddingTop: 80)
//        topLabel.centerX(inView: view)
//
//        contentView.anchor(top: topView.bottomAnchor, left: view.leftAnchor,
//                           bottom: view.bottomAnchor, right: view.rightAnchor,
//                           paddingTop: -80, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
//        contentView.layer.cornerRadius = 40
//        contentView.backgroundColor = .white
//    }
//
//    func setupBtn() {
//        view.addSubview(catBtn)
//        view.addSubview(dogBtn)
//        dogBtn.anchor(top: contentView.topAnchor, left: view.leftAnchor,
//                      right: view.rightAnchor, paddingTop: 20, paddingLeft: 40,
//                      paddingRight: 40, height: 150)
//        dogBtn.backgroundColor = .gray
//        dogBtn.titleLB.text = "123123123"
//        dogBtn.mainImage.image = UIImage(named: "dog")
//        dogBtn.mainImage.contentMode = .scaleToFill
//        dogBtn.addTarget(self, action: #selector(didtap), for: .touchUpInside)
//
//        catBtn.anchor(top: dogBtn.bottomAnchor, left: view.leftAnchor,
//                      right: view.rightAnchor, paddingTop: 20, paddingLeft: 40,
//                      paddingRight: 40, height: 150)
//        catBtn.backgroundColor = .gray
//        catBtn.titleLb.text = "0000000"
//        catBtn.mainImage.image = UIImage(named: "dog")
//        catBtn.mainImage.contentMode = .scaleToFill
//        catBtn.addTarget(self, action: #selector(didtap), for: .touchUpInside)
//    }
//






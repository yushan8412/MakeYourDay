//
//  MainRButton.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import UIKit

class MainRButton: UIButton {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var titleLb: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // every xib view need to be register
    func initialView(){
        Bundle.main.loadNibNamed("MainRButton", owner: self, options: nil)
        addSubview(contentView)
        // 需要加入關掉 userInteraction 才可以觸發點擊事件
        contentView.isUserInteractionEnabled = false
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        mainImage.layer.cornerRadius = 15
        contentView.layer.cornerRadius = 15
        self.setTitle("", for: .normal)
        self.mainImage.contentMode = .scaleToFill
    }
}
    


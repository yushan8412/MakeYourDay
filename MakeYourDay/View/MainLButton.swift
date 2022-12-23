//
//  MainButton.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/20.
//

import UIKit

class MainLButton: UIButton {
    
    @IBOutlet var contentView: UIView!

    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var titleLB: UILabel!
    
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
        Bundle.main.loadNibNamed("MainLButton", owner: self, options: nil)
        addSubview(contentView)
        contentView.isUserInteractionEnabled = false
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        contentView.layer.cornerRadius = 15
        mainImage.layer.cornerRadius = 15
        self.setTitle("", for: .normal)
        self.mainImage.contentMode = .scaleAspectFill

    }
}


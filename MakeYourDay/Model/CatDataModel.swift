//
//  DataModel.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import Foundation

struct CatFact: Codable {
    var fact: String = ""
    var length: Int = 0
}

struct CatPic: Codable {
    var id: String = ""
    var url: String = ""
    var width: Int = 0
    var height: Int = 0
}



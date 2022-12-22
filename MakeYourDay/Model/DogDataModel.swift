//
//  DogDataModel.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/22.
//

import Foundation

struct DogPic: Codable {
    var message: String = ""
    var status: String = ""
}

struct DogFact: Codable {
    var facts: [String] = []
    var success: Bool = true
}

//
//  JokeDataModel.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/22.
//

import Foundation

struct JokeData: Codable {
    var id: Int = 0
    var type: String = ""
    var setup: String = ""
    var punchline: String = ""
}


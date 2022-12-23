//
//  MissionDataModel.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/22.
//

import Foundation

struct MissionData: Codable {
    var activity: String = ""
    var type: String = ""
    var participants: Int = 0
    var price: Double = 0.0
    var link: String = ""
    var key: String = ""
    var accessibility: Double = 0.0
}

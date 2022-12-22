//
//  MissionApiManager.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/22.
//

import Foundation
import UIKit

class MissionApiManager {
    static let shared = MissionApiManager()
    
    func fetchMissionData( completion: @escaping(Result<MissionData, Error>) -> Void) {
        guard let url = URL(string: "https://www.boredapi.com/api/activity") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let data = try decoder.decode(MissionData.self, from: data)
                    completion(Result<MissionData, Error>.success(data))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }.resume()
    }
    
}

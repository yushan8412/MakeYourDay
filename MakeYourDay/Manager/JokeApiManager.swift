//
//  JokeApiManager.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/22.
//

import Foundation
import UIKit

class JokeApiManager {
    static let shared = JokeApiManager()
    
    func fetchJokeData(completion: @escaping(Result<JokeData, Error>) -> Void) {
        guard let url = URL(string: "https://official-joke-api.appspot.com/random_joke") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let data = try decoder.decode(JokeData.self, from: data)
                    completion(Result<JokeData, Error>.success(data))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }.resume()
    }
    
}

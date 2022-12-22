//
//  DogApiManager.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/22.
//

import Foundation
import UIKit

class DogApiManager {
    static let shared = DogApiManager()
    
    func fetchDogFact(completion: @escaping(Result<DogFact, Error>) -> Void) {
        guard let url = URL(string: "https://dog-api.kinduff.com/api/facts?number=5") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let data = try decoder.decode( DogFact.self, from: data )
                    completion(Result<DogFact, Error>.success(data))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }.resume()
    }
    
    func fetchDogPic(completion: @escaping(Result<DogPic, Error>) -> Void) {
        guard let url = URL(string: "https://dog.ceo/api/breeds/image/random") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let data = try decoder.decode(DogPic.self, from: data)
                    completion(Result<DogPic, Error>.success(data))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }.resume()
    }
    
}

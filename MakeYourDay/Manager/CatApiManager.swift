//
//  ApiManager.swift
//  MakeYourDay
//
//  Created by Yulia on 2022/12/21.
//

import Foundation
import UIKit

class CatApiManager {
    
    static let shared = CatApiManager()
        
    func fetchCatFactData(completion: @escaping (Result<CatFact, Error>) -> Void) {
        
        guard let url = URL(string: "https://catfact.ninja/fact") else { return }
        let request = URLRequest(url: url)
     
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let data = try decoder.decode(CatFact.self, from: data)
                    completion(Result<CatFact, Error>.success(data))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }.resume()
    }
    
    func fetchCatPic(completion: @escaping (Result<[CatPic], Error>) -> Void) {
        guard let url = URL(string: "https://api.thecatapi.com/v1/images/search") else { return }
        let request = URLRequest(url: url)
     
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
            let decoder = JSONDecoder()
            if let data = data {
                do {
                    let data = try decoder.decode([CatPic].self, from: data)
                    completion(Result<[CatPic], Error>.success(data))
                } catch {
                    completion(Result.failure(error))
                }
            }
        }.resume()
    }
}


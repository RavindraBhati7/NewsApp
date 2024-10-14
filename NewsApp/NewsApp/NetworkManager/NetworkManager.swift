//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import Foundation

struct API {
    static let key = "de5ff49954e44594902fe7cb8f17608f"
}


class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://newsapi.org/v2/"
    private let headline = "top-headlines?country=us"
    
    func getNews(completion: @escaping (Result<[NewsModel]?,NewsError>) -> Void ) {
        let urlString = "\(baseURL)\(headline)&apiKey=\(API.key)"
        print(urlString)
        guard let url = URL(string: urlString) else {
            completion(.failure(.badUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data else {
                return completion(.failure(.noData))
            }
            
            let newsResponse = try? JSONDecoder().decode(ArticlesResponse.self, from: data)
            newsResponse == nil ? completion(.failure(.dataParseError)) : completion(.success(newsResponse!.articles))
        }.resume()
    }
    
    func getImages(urlString: String, completion: @escaping (Data?) -> ()) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data else {
                return completion(nil)
            }
            completion(data)
        }.resume()
    }
}

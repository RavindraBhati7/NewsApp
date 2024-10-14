//
//  ArticlesResponse.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import Foundation

struct ArticlesResponse: Decodable {
    var status: String
    var totalResults: Int
    var articles: [NewsModel]
}

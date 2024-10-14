//
//  NewsModel.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import Foundation

struct NewsModel: Decodable {
    var source: ArticleSource?
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var isBookmarked: Bool? = false

}

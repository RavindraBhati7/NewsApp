//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import Foundation

class NewsViewModel: ObservableObject, Identifiable {
    let id = UUID()
    var news: NewsModel
    
    init(news: NewsModel) {
        self.news = news
    }

    var author: String {
        news.author ?? "Unknown Author"
    }

    var title: String {
        news.title ?? "No Title"
    }

    var description: String {
        news.description ?? "No Description"
    }

    var url: String {
        news.url ?? ""
    }

    var urlToImage: String {
        news.urlToImage ?? "https://www.kindpng.com/picc/m/182-1827064_breaking-news-banner-png-transparent-background-breaking-news.png"
    }
    
    var isBookmarked: Bool {
        get { news.isBookmarked ?? false }
        set { news.isBookmarked = newValue }
    }
}

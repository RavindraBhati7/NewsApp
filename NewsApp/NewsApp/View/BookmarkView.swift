//
//  BookmarkView.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import SwiftUI

struct BookmarkView: View {
    
    var newsList = [NewsViewModel]()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(newsList) { newsViewModel in
                    if newsViewModel.isBookmarked {
                        NewsCard(news: newsViewModel)
                    }
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    BookmarkView()
}


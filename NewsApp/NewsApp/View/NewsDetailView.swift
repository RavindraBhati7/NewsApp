//
//  NewsDetailView.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import SwiftUI

struct NewsDetailView: View {
    var news: NewsViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(news.title )
                    .font(.largeTitle)
                    .bold()
                
                AsyncImage(url: URL(string: news.urlToImage))
                    .cornerRadius(10)
                    .frame(width: 360, height: 200)
                    .scaledToFit()
                Text(news.author )
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(news.description )
                    .font(.body)
                
                Spacer()
                
                Button(action: toggleBookmarked) {
                    HStack {
                        Image(systemName: news.isBookmarked ? "star.fill" : "star")
                        Text(news.isBookmarked ? "Remove bookmarked" : "Bookmarked")
                    }
                    .foregroundColor(.red)
                }
                .padding()
            }
            .padding()
        }
        .navigationTitle("Details of news")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func toggleBookmarked() {
        news.isBookmarked.toggle()
    }
}


#Preview {
    let newsModel = NewsModel(isBookmarked: false)
    NewsDetailView(news: NewsViewModel(news: newsModel))
}

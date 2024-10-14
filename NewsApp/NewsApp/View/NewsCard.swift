//
//  NewsCard.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import SwiftUI

struct NewsCard: View {
    var news: NewsViewModel
    
    @State private var isNavigationActive: Bool = false

    var body: some View {
        ZStack {
            HStack(spacing: 2) {
                if let url = URL(string: news.urlToImage) {
                    AsyncImage(url: url)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120)
                            .cornerRadius(20)
                } else {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .cornerRadius(20)
                }
           
                VStack(alignment: .leading, spacing: 5) {
                    Text(news.news.title ?? "No Title")
                        .bold()
                        .lineLimit(2)
                    Text(news.news.description ?? "No Description")
                        .font(.caption)
                        .lineLimit(3)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(Color.white)
                .cornerRadius(10)
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 4)
            .onTapGesture {
                isNavigationActive = true
            }
            .background(NavigationLink(destination: isNavigationActive ? NewsDetailView(news: news) : nil, isActive: $isNavigationActive) {
                EmptyView()
            })
        }
    }
}

#Preview {
    let newsModel = NewsModel(isBookmarked: false)
    NewsCard(news: NewsViewModel(news: newsModel))
}


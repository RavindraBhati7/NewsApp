//
//  ContentView.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var newsListViewModel = NewsListViewModel()
    
    init() {
        newsListViewModel.load()
    }
    
    var body: some View {
            NavigationView {
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(newsListViewModel.newsList) { newsViewModel in
                                NewsCard(news: newsViewModel)
                            }
                        }
                        .padding()
                    }
                    .navigationTitle("NEWS")
                    .toolbar {
                        NavigationLink {
                            BookmarkView(newsList: newsListViewModel.newsList)
                                .navigationTitle("Bookmark NEWS")
                        } label: {
                            BookmarkButton()
                        }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
    }
}



#Preview {
    ContentView()
}



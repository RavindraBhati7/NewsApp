//
//  BookmarkRow.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import SwiftUI

struct BookmarkRow: View {
    var news: NewsModel
    
    var body: some View {
        HStack (spacing: 20) {
            Image("games")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("India Defeated Pakistan! 1-0!!!")
                    .bold()
                    .lineLimit(2)
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .onTapGesture {
                        
                    }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    let newsModel = NewsModel(isBookmarked: false)
    BookmarkRow(news: newsModel)
}

//
//  BookmarkButton.swift
//  NewsApp
//
//  Created by Ravindra bhati on 14/10/24.
//

import SwiftUI

struct BookmarkButton: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "star.fill")
                .padding(.top, 5)
                .foregroundColor(.yellow)
        }
    }
}

#Preview {
    BookmarkButton()
}

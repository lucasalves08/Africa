//
//  CoverImageView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - Preview
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}

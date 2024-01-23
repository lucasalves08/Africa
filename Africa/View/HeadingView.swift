//
//  HeadingView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct HeadingView: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundStyle(.accent)
                .imageScale(.large)

            Text(text)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeadingView(image: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
        .padding()
}

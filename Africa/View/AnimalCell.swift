//
//  AnimalCell.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct AnimalCell: View {
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16.0) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12.0)
                )
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 0)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AnimalCell(animal: MockData.animals[1])
        .padding()
}

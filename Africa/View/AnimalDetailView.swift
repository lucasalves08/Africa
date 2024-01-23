//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20.0) {
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Name
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8.0)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6.0)
                            .offset(y: 24.0)
                    )
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(image: "photo.on.rectangle.angled", text: "Wilderness in Picture")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingView(image: "questionmark.circle", text: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // Description
                Group {
                    HeadingView(image: "info.circle", text: "Did you All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                Group {
                    HeadingView(image: "map", text: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // Link
                Group {
                    HeadingView(image: "books.vertical", text: "Learn More")
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack {
        AnimalDetailView(animal: MockData.animals[0])
    }
    .previewDevice("iPhone 15")
}

//
//  ContentView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalCell(animal: animal)
                    }
                }
            } // List
            .navigationTitle("Africa")
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContentView()
}

//
//  InsetFactView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148.0, idealHeight: 168.0, maxHeight: 180.0)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetFactView(animal: MockData.animals[0])
        .padding()
}

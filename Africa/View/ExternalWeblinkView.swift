//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundStyle(.accent)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ExternalWeblinkView(animal: MockData.animals[0])
        .padding()
}

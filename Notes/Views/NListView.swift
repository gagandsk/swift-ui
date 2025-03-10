//
//  NListView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct NListView: View {
    
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Texto del card 1", type: .small, isFav: false),
        NCard(title: "Card 2", text: "Texto del card 2", type: .medium, isFav: false),
        NCard(title: "Card 3", text: "Texto del card 3", type: .small, isFav: false),
        NCard(title: "Card 4", text: "Texto del card 4", type: .small, isFav: false)
    ]
    
    var body: some View {
        List{
            ForEach(cards) {card in
                NCardView(card: card)
                
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    NListView()
}

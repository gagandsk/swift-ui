//
//  NDetailView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct NDetailView: View {
    @State var card: NCard
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(card.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                Text(card.text)
                    .font(.body)
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                
                Spacer()
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.mint]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding()
        }
        .background(Color.cyan.opacity(0.1))
    }
}

#Preview {
    NDetailView(card: NCard(title: "Titulo", text: "text", type: .small, isFav: false))
}

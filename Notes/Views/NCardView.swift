//
//  NCardView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct NCardView: View {
    
    let card: NCard
    @ViewBuilder
    func CardSmallView() -> some View {
        HStack(spacing: 20) {
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .padding(5)
                .background(.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            Image(systemName: "heart")
                .foregroundStyle(.red)
        }
        .frame(height: 75)
        .padding()
        .background(.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func CardLargeView() -> some View {
        ZStack(alignment: .center){
            VStack{
                Image(systemName: "heart").foregroundStyle(.red).frame(maxWidth:350,alignment: .trailing)
                HStack{
                    Text(card.title)
                        .font(.headline)
                        .lineLimit(2)
                        .frame(width: 120)
                        .padding(8)
                        .padding(5)
                        .background(.cyan.opacity(0.2))
                        .cornerRadius(8)
                }
                
                Text(card.text)
                    .font(.subheadline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
            }
            .frame(height: 150)
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(16)
            .listRowSeparator(.hidden)
        }
    }
    
    var body: some View {
        
        switch card.type {
            case .small:
                CardSmallView()
            case .medium:
                CardLargeView()
        }
    }
}

#Preview {
    VStack{
        NCardView(card: NCard(title: "Hello", text: "World", type: .small, isFav: false))
        NCardView(card: NCard(title: "Swift", text: "Programming", type: .medium, isFav: true))
        NCardView(card: NCard(title: "UI Design", text: "Best Practices", type: .small, isFav: false))
        NCardView(card: NCard(title: "Networking", text: "API Calls", type: .medium, isFav: false))
        NCardView(card: NCard(title: "Concurrency", text: "Async/Await", type: .small, isFav: false))
        NCardView(card: NCard(title: "Security", text: "Encryption", type: .medium, isFav: true))
        NCardView(card: NCard(title: "Cloud", text: "AWS & Azure", type: .small, isFav: true))
        NCardView(card: NCard(title: "Databases", text: "SQL & NoSQL", type: .medium, isFav: false))
    }
}

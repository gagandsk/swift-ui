//
//  ContentView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 8/3/25.
//

import SwiftUI

struct NCard: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let type: NcardType
}

enum NcardType {
    case small
    case medium
}

struct ContentView: View {
    
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Texto del card 1", type: .small),
        NCard(title: "Card 2", text: "Texto del card 2", type: .medium),
        NCard(title: "Card 3", text: "Texto del card 3", type: .small),
        NCard(title: "Card 4", text: "Texto del card 4", type: .small)
    ]
    
    @ViewBuilder
    func CardSmallView(card: NCard) -> some View {
        HStack(spacing: 20) {
            Text(card.title).frame(width: 200,height: 40).padding(5).background(.blue).cornerRadius(10)
            Text(card.text)
            Image(systemName: "heart").foregroundStyle(.red)
        }
        .padding(2)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func CardLargeView() -> some View {
        ZStack(alignment: .center){
            VStack{
                Image(systemName: "heart").foregroundStyle(.red).frame(maxWidth:350,alignment: .trailing)
                HStack{
                    Text("Hello, World!").frame(width: 150,height: 40).padding(5).background(.blue).cornerRadius(10)
                }
                
                Text("This is a example of a preview")
            }
            .padding(3)
            .listRowSeparator(.hidden)
        }
    }
    
    var body: some View {
        /*
        Text("Nunca pares de Aprender")
            .font(.system(size: 50))
            .lineLimit(2)
            .multilineTextAlignment(.trailing)
            .bold()
            .underline()
        
        
        Circle()
            .background(Color.green)
            .padding()
            .background(Color.red)
            .frame(width: 200, height: 200)
        
        
        Rectangle()
            .frame(width: 200, height: 200)
            .foregroundStyle(Color.yellow)
            .cornerRadius(100)
            .opacity(0.5)
        
        
        Ellipse()
            .stroke(lineWidth: 5)
            .frame(width: 200, height: 400)
            .foregroundStyle(Color.red)
            .rotationEffect(Angle(degrees: 30))
        
    
        RoundedRectangle(cornerRadius: 25)
            .stroke(style: .init(lineWidth: 15))
            .foregroundStyle(.ultraThickMaterial)
            .background(
                LinearGradient(
                    colors: [Color.blue, Color.purple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .frame(height: 75)
            .overlay {
                Text("Press me")
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .semibold))
            }
         */
        
        /*
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .foregroundStyle(.yellow)
            .background(.gray)
        */
        /*
        Button(action: {}, label: {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                })
                .frame(width:300, height: 75)
                .background(Color.blue)
                .cornerRadius(4)
        */
        /*
        ZStack(alignment: .center){
            Color.green
            Circle()
            HStack(spacing: 0) {
                Rectangle().foregroundStyle(Color.red).frame(width: 100, height: 100)
                Rectangle().foregroundStyle(Color.blue).frame(width: 100, height: 100)
            }
            VStack{
                Text("Hello, !").bold().font(.system(size: 25))
                Text("World!").bold().font(.system(size: 25))
            }
        }
        */
        /*
        HStack(spacing: 20) {
            Text("Hello, World!").frame(width: 150,height: 40).padding(5).background(.blue).cornerRadius(10)
            Text("This is a example of a preview")
            Image(systemName: "heart").foregroundStyle(.red)
            
        }
        */
        
        /*
        ZStack(alignment: .center){
            VStack{
                Image(systemName: "heart").foregroundStyle(.red).frame(maxWidth:350,alignment: .trailing)
                HStack{
                    Text("Hello, World!").frame(width: 150,height: 40).padding(5).background(.blue).cornerRadius(10)
                }
                
                Text("This is a example of a preview")
            }
        }
         */
        /*
        ScrollView(.horizontal){
            HStack{
                ForEach(0..<20) { _ in
                    CardSmallView()
                }
            }
        }
        */
        
        List{
            ForEach(cards) {card in
                CardSmallView(card: card)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}

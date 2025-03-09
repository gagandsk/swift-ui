//
//  ContentView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 8/3/25.
//

import SwiftUI

struct ContentView: View {
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
        HStack(alignment: .bottom, spacing: 20){
            Text("Nunca")
            Text("pares")
            Text("de").font(.largeTitle)
            Text("aprender")
        }
    }
}

#Preview {
    ContentView()
}

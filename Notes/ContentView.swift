//
//  ContentView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 8/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
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
        
    }
}

#Preview {
    ContentView()
}

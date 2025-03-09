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
    }
}

#Preview {
    ContentView()
}

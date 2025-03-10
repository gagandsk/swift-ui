//
//  ButtonPractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct ButtonPractice: View {
    @State var counter: Int = 0 //el decorador '@State' nos sirve para marcar una variable como mutable
    var body: some View {
        VStack{
            Text("\(counter)$")
            Button {
                counter += 1
                print(counter)
            } label: {
                Text("Get Free Money")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .padding(30)
        
    }
}

#Preview {
    ButtonPractice()
}

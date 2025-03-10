//
//  TextFieldPractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var name: String = ""
    @State var color: Color = Color.gray.opacity(0.2)
    
    var body: some View {
        TextField("Name", text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(8)
            .padding()
            .onChange(of: name) { newValue in
                //Validacion name > 10 char
                if newValue.count > 10{
                    //color rojo
                    color = .red
                } else {
                    //color gray
                    color = Color.gray.opacity(0.2)
                }
            }
    }
}

#Preview {
    TextFieldPractice()
}

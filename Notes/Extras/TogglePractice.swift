//
//  TogglePractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct TogglePractice: View {
    @State var age: Double = 18
    @State var isAdult: Bool = false
    var body: some View {
        VStack{
            Text("Age: \(age.formatted(.number))")
            Slider(value: $age, in: 1...100, step: 1)
            Toggle("Is Adult? ", isOn: $isAdult)
        }
        .padding()
        .onChange(of: age) { newValue in
            if age > 18 {
                isAdult = true
            } else {
                isAdult = false
            }
        }
    }
}

#Preview {
    TogglePractice()
}

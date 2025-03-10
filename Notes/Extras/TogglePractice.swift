//
//  TogglePractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct TogglePractice: View {
    @State var age: Double = 18
    var body: some View {
        VStack{
            Text("Age: \(age.formatted(.number))")
            Slider(value: $age, in: 1...100, step: 1)
        }
    }
}

#Preview {
    TogglePractice()
}

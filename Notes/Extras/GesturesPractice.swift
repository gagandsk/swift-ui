//
//  GesturesPractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct GesturesPractice: View {
    @State var color: Color = .black
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .onTapGesture(count: 2) {
                color = .red
            }
    }
}

#Preview {
    GesturesPractice()
}

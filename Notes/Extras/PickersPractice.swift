//
//  PickersPractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct PickersPractice: View {
    @State var date: Date = Date()
    var body: some View {
        DatePicker("date", selection: $date, displayedComponents: [.hourAndMinute])
            .datePickerStyle(.wheel)
            .padding()
    }
}

#Preview {
    PickersPractice()
}

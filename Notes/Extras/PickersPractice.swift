//
//  PickersPractice.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct PickersPractice: View {
    @State var date: Date = Date()
    @State var category: Int = 0
    @State var size: NcardType = .small
    var body: some View {
        /*
        DatePicker("date", selection: $date, displayedComponents: [.hourAndMinute])
            .datePickerStyle(.wheel)
            .padding()
        */
        /*
        Picker("Categories", selection: $category) {
            Text("0").tag(0)
            Text("1").tag(1)
            Text("2").tag(2)
        }
        .pickerStyle(.segmented)
        */
        Picker("Tamaños", selection: $size){
            Text("Pequeño").tag(NcardType.small)
            Text("Mediano").tag(NcardType.medium)
        }
    }
}

#Preview {
    PickersPractice()
}

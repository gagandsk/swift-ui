//
//  Ncard.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import Foundation

struct NCard: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let type: NcardType
}

enum NcardType {
    case small
    case medium
}

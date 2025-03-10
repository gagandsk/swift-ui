//
//  NCreateNoteViewModel.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import Foundation

class NCreateNoteViewModel: ObservableObject {
    
    @Published var title: String = ""
    @Published var text: String = ""
    @Published var size: NcardType = .small
    @Published var isFavorite: Bool = false
    
    func createNote() -> NCard {
        let card = NCard(title: title, text: text, type: size, isFav: isFavorite)
        return card
    }
}

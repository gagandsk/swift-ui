//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct NCreateNoteView: View {
    @StateObject var viweModel: NCreateNoteViewModel = NCreateNoteViewModel()
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        //crear nota
        let card = viweModel.createNote()
        print("Esta es tu nueva card: \(card)")
        onNoteCreated?(card)
    }
    var body: some View {
        ScrollView{
            VStack{
                Text("Crear nueva nota")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                TextField("Titulo", text: $viweModel.title)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                TextEditor(text: $viweModel.text)
                    .scrollContentBackground(.hidden)
                    .font(.body)
                    .frame(height: 150)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                HStack{
                    Text("Tamaño")
                    Spacer()
                    Picker("Tamaños", selection: $viweModel.size) {
                        Label("Pequeño", systemImage: "widget.small").tag(NcardType.small)
                        Label("Mediano", systemImage: "widget.medium").tag(NcardType.medium)
                    }
                }
                .padding()
                Toggle("Marcar como favorito", isOn: $viweModel.isFavorite)
                    .padding()
                Button {
                    onTap()
                } label: {
                    Text("Guardar Nota")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .padding()
        .background(Color.cyan.opacity(0.2))
        
    }
}

#Preview {
    NCreateNoteView()
}

//
//  NListView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//

import SwiftUI

struct NListView: View {
    @EnvironmentObject var appInfo: AppInfo
    
    @State var showSheet: Bool = false
    @State var showDetails: Bool = false
    @State var selectedCard: NCard?
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(appInfo.cards) {card in
                    NCardView(card: card)
                        .onTapGesture {
                            selectedCard = card
                            showDetails = true
                        }
                    
                }
            }
            .listStyle(.plain)
            .sheet(isPresented: $showSheet) {
                NCreateNoteView(){ card in
                    appInfo.createNote(card: card)
                    showSheet = false
                }
            }
            .overlay{
                VStack{
                    Spacer()
                    Button(action: {
                        showSheet = true
                    }) {
                        Text("Crear nueva nota")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 20)
                }
                
            }
            .navigationDestination(isPresented: $showDetails) {
                if let selectedCard {
                    NDetailView(card: selectedCard)
                }
            }
        }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}

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
    
    var body: some View {
        List{
            ForEach(appInfo.cards) {card in
                NCardView(card: card)
                
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
                Button("Create note") {
                    showSheet = true
                }
            }
            
        }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}

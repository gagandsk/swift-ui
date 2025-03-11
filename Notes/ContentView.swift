//
//  ContentView.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 8/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var appInfo = AppInfo()
    
    var body: some View {
        TabView{
            NListView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            NListView(forFavorites: true)
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
                
        }
        .environmentObject(appInfo)
        
    }
}

#Preview {
    ContentView()
}

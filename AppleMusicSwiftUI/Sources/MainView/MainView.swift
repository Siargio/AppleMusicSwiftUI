//
//  MainView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 25.11.22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Медиатека")
            }
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Радио")
            }
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Поиск")
            }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

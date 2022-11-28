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
                Image(systemName: Strings.iconMedia)
                Text(Strings.TextMedia)
            }
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Image(systemName: Strings.iconRadio)
                Text(Strings.TextRadio)
            }
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Image(systemName: Strings.iconSearch)
                Text(Strings.TextSearch)
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

extension MainView {
    enum Strings {
        static let iconMedia = "music.note.list"
        static let TextMedia = "Медиатека"

        static let iconRadio = "dot.radiowaves.left.and.right"
        static let TextRadio = "Радио"

        static let iconSearch = "magnifyingglass"
        static let TextSearch = "Поиск"
    }
}

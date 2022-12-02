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
                Metric.iconMedia
                Text(Metric.TextMedia)
            }
            NavigationView {
                RadioModule()
            }
            .tabItem {
                Metric.iconRadio
                Text(Metric.TextRadio)
            }
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Metric.iconSearch
                Text(Metric.TextSearch)
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
    enum Metric {
        static let iconMedia = Image(systemName: "music.note.list")
        static let TextMedia = "Медиатека"

        static let iconRadio = Image(systemName:"dot.radiowaves.left.and.right")
        static let TextRadio = "Радио"

        static let iconSearch = Image(systemName:"magnifyingglass")
        static let TextSearch = "Поиск"
    }
}

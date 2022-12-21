//
//  AppleMusicSwiftUIApp.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 25.11.22.
//

import SwiftUI

@main
struct AppleMusicSwiftUIApp: App {

    init() {
        UITabBar.appearance().backgroundColor = .systemGray6
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

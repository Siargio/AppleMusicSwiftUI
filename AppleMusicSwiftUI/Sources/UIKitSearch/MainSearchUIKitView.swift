//
//  MainSearchUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 17.12.22.
//

import SwiftUI

struct MainSearchUIKitView: View {
    var body: some View {
        VStack {
            SearchUIKitView()
            Player()
        }
    }
}

struct MainSearchUIKitView_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchUIKitView()
    }
}

//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 25.11.22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack() {
            Spacer()
            Text("Ищете свою музыку?")
                .bold()
                .font(.title)
            Text("Здесь появится купленная Вами в \n iTunes Store Музыка.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .font(.title2)
            Spacer()
                .frame(height: 200)
            Player()
        }
        .navigationTitle("Медиатека")
        .navigationBarItems(trailing: NavigationLink(
            destination: ListView(),
            label: {
                Text("Править")
                    .foregroundColor(.red)
            }))
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

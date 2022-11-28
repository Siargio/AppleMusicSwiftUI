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
            Text(Strings.searchMusic)
                .bold()
                .font(.title)
            Text(Strings.textItuns)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .font(.title2)
            Spacer()
                .frame(height: 200)
            Player()
        }
        .navigationTitle(Strings.media)
        .navigationBarItems(trailing: NavigationLink(
            destination: ListView(),
            label: {
                Text(Strings.textEdit)
                    .foregroundColor(.red)
            }))
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

extension LibraryView {
    enum Strings {
        static let searchMusic = "Ищете свою музыку?"
        static let textItuns = "Здесь появится купленная Вами в \n iTunes Store Музыка."
        static let media = "Медиатека"
        static let textEdit = "Править"
    }
}

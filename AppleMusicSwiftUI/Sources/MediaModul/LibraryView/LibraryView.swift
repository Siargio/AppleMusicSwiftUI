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
            Text(Metric.searchMusic)
                .bold()
                .font(.title)
            Text(Metric.textItuns)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .font(.title2)
            Spacer()
                .frame(height: Metric.frameHeight)
            Player()
        }
        .navigationTitle(Metric.media)
        .navigationBarItems(trailing: NavigationLink(
            destination: ListView(),
            label: {
                Text(Metric.textEdit)
                    .foregroundColor(.red)
            }))
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

 private extension LibraryView {
    enum Metric {
        static let searchMusic = "Ищете свою музыку?"
        static let textItuns = "Здесь появится купленная Вами в \n iTunes Store Музыка."
        static let media = "Медиатека"
        static let textEdit = "Править"

        static let frameHeight: CGFloat = 200
    }
}

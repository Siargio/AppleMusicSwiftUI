//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 25.11.22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                Text("Ищите свою музыку?")
                    .bold()
                    .font(.title)

                Text("Здесь появится купленная Вами в iTunes Store Музыка.")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                Spacer()
                    .frame(height: 70)
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(
                destination: ListView(),
                label: {
                Text("Править")
                    .foregroundColor(.red)
            }))

            HStack {
                VStack {
                    Image(systemName: "music.note")
                        .padding(.bottom, 40)
                }
                Text("Не исполняется")
                Image(systemName: "person.fill")

            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

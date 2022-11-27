//
//  Player.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 27.11.22.
//

import SwiftUI

struct Player: View {
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
                .shadow(radius: 6)
                .padding()
            Text("Жуки - Батарейка!")
            Spacer()
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .foregroundColor(.black)
                    .font(.title3)
            }
            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .foregroundColor(.black)
                    .font(.title3)
                    .padding()
            }
        }
        .background(Color("grayBackground"))
        .overlay(Divider(), alignment: .bottom)
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}

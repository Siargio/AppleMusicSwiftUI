//
//  ImageView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct ImageView: View {

    @State var track: AlbumDataModel
    @Binding var isPlaying: Bool

    var body: some View {
        Image(track.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaledToFit()
            .scaleEffect(isPlaying ? 1 : 0.8)
            .shadow(color: Color ("darkGray"), radius: 8, x: 0, y: 9)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Земфира", song: "Прости меня моя любовь", image: "земфира", duration: 284),
                  isPlaying: .constant(false))
    }
}

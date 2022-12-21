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
            .clipShape(RoundedRectangle(cornerRadius: Metric.cornerRadius))
            .scaledToFit()
            .scaleEffect(isPlaying ? Metric.scaleEffectFirst : Metric.scaleEffectTwo)
            .shadow(color: Metric.shadowColor, radius: Metric.shadowRadius, x: Metric.shadowX, y: Metric.shadowY)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Земфира", song: "Прости меня моя любовь", image: "земфира", duration: 284),
                  isPlaying: .constant(false))
    }
}

private extension ImageView {
    enum Metric {
        static let cornerRadius: CGFloat = 10
        static let scaleEffectFirst : CGFloat = 1
        static let scaleEffectTwo : CGFloat = 0.8
        static let shadowRadius: CGFloat = 8
        static let shadowX: CGFloat = 0
        static let shadowY: CGFloat = 9

        static let shadowColor = Color("darkGray")
    }
}

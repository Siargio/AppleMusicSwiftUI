//
//  PlayerDetailView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct PlayerDetailView: View {

    @Environment(\.dismiss) private var dismiss
    @State var track: AlbumDataModel
    @State var isPlaying = false
    let gradient = Gradient(colors: [.gray, Color ("darkGray"), .gray])

    var body: some View {
        ZStack {
            Rectangle()
                .blur(radius: 20)
            VStack {
                VStack {
                    Capsule()
                        .fill(Color ("grayBackground").opacity(0.3))
                        .frame(width: 40, height: 5)
                        .cornerRadius(2)
                    Spacer(minLength: 50)
                    ImageView(track: track,
                              isPlaying: $isPlaying)
                    Spacer()
                    TrackInfoView(track: track)
                    Spacer()
                    TimeView(duration: track)
                    Spacer()
                    PlayButtonView(isPlaying: $isPlaying)
                    Spacer()
                }
                VolumeView()
                ButtonsView()
                    .padding(.bottom)
            }
            .padding(.horizontal, 30)
            .background(LinearGradient(
                gradient: gradient,
                startPoint: .bottom,
                endPoint: .top))
        }
        .gesture(
            DragGesture().onEnded { value in
                if value.location.y - value.startLocation.y > 100 {
                    dismiss()
                }
            }
        )

    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Земфира", song: "Прости меня моя любовь", image: "земфира", duration: 284))
    }
}

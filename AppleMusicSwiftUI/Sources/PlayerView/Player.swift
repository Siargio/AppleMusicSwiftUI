//
//  Player.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 27.11.22.
//

import SwiftUI

struct Player: View {

    @State private var isShowingDetailsPlayer = false
    @State private var track = AlbumDataModel.mocks.randomElement()
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: Metric.rectangleWidthHeight, height: Metric.rectangleWidthHeight)
                        .cornerRadius(Metric.cornerRadius)
                        .shadow(radius: Metric.shadowRadius)
                        .padding()
                    Image(track?.image ?? Metric.musicNote)
                        .resizable()
                        .frame(width: Metric.rectangleWidthHeight, height: Metric.rectangleWidthHeight)
                        .cornerRadius(Metric.cornerRadius)
                        .shadow(radius: Metric.shadowRadius)
                        .scaledToFit()
                }
                Text(track?.song ?? Metric.textMusic)
                Spacer()
                Button(action: {}) {
                    Image(systemName: Metric.buttonImagePlay)
                        .foregroundColor(.black)
                        .font(.title3)
                }
                Button(action: {}) {
                    Image(systemName: Metric.buttonImagePlayPlay)
                        .foregroundColor(.black)
                        .font(.title3)
                        .padding()
                }
            }
            .background(Color(Metric.background))
            .overlay(Divider(), alignment: .bottom)
        }
        .onTapGesture {
            isShowingDetailsPlayer.toggle()
        }
        .fullScreenCover(isPresented: $isShowingDetailsPlayer) {
            PlayerDetailView(track: track ?? AlbumDataModel(author: "Земфира", song: "Прости меня моя любовь", image: "земфира", duration: 180))
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}

private extension Player {
    enum Metric {
        static let rectangleWidthHeight: CGFloat = 60
        static let cornerRadius: CGFloat = 10
        static let shadowRadius: CGFloat = 6

        static let textMusic = "Жуки - Батарейка!"
        static let buttonImagePlay = "play.fill"
        static let buttonImagePlayPlay = "forward.fill"
        static let background = "grayBackground"
        static let musicNote = "music.note"
    }
}

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
    let gradient = Gradient(colors: [.gray, Metric.gradientColor, .gray])

    var body: some View {
        ZStack {
            Rectangle()
                .blur(radius: Metric.rectangleBlurRadius)
            VStack {
                VStack {
                    Capsule()
                        .fill(Metric.capsuleColor.opacity(Metric.opacity))
                        .frame(width: Metric.capsuleFrameWidth, height: Metric.capsuleFrameHeight)
                        .cornerRadius(Metric.capsuleCornetRadius)
                    Spacer(minLength: Metric.capsuleCornetRadius)
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
            .padding(.horizontal, Metric.paddingHorizontal)
            .background(LinearGradient(
                gradient: gradient,
                startPoint: .bottom,
                endPoint: .top))
        }
        .gesture(
            DragGesture().onEnded { value in
                if value.location.y - value.startLocation.y > Metric.value {
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

private extension PlayerDetailView {
    enum Metric {
        static let gradientColor = Color ("darkGray")
        static let capsuleColor = Color ("grayBackground")

        static let rectangleBlurRadius: CGFloat = 20
        static let opacity: CGFloat = 0.3
        static let capsuleFrameWidth: CGFloat = 40
        static let capsuleFrameHeight: CGFloat = 5
        static let capsuleCornetRadius: CGFloat = 2
        static let spacer: CGFloat = 50
        static let paddingHorizontal: CGFloat = 30
        static let value: CGFloat = 100
    }
}

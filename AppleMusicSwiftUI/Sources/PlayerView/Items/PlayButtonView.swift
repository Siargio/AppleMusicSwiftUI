//
//  PlayButtonView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct PlayButtonView: View {

    @Binding var isPlaying: Bool

    var body: some View {
        HStack {
          Spacer()
            HStack(spacing: Metric.hStackSpacing) {
                Button(action: {}) {
                    Image(systemName: Metric.buttonLeftImage)
                }
                .tint(Metric.tintColor)
                .font(.largeTitle)
                Button(action: {
                    withAnimation(.spring()) {
                        isPlaying.toggle()
                    }
                }) {
                    if isPlaying {
                        Image(systemName: Metric.isPlayingImage)
                    } else {
                        Image(systemName: Metric.elseIsPlayingImage)
                    }
                }
                .tint(Metric.tintColor)
                .font(.largeTitle)
                Button(action: {}) {
                    Image(systemName: Metric.buttonRightImage)
                }
                .tint(Metric.tintColor)
                .font(.largeTitle)
            }
            Spacer()
        }
    }
}

struct PlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlayButtonView(isPlaying: .constant(false))
    }
}

private extension PlayButtonView {
    enum Metric {
        static let hStackSpacing: CGFloat = 60
        static let buttonLeftImage = "backward.fill"
        static let tintColor = Color ("grayBackground")
        static let isPlayingImage = "play.fill"
        static let elseIsPlayingImage = "pause.fill"
        static let buttonRightImage = "forward.fill"
    }
}

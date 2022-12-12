//
//  TrackInfoView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct TrackInfoView: View {

    @State var track: AlbumDataModel
    
    var body: some View {
        HStack(spacing: Metric.hStackSpacing) {
            VStack(alignment: .leading, spacing: Metric.vStachSpacing) {
                Text(track.song)
                    .fontWeight(.bold)
                    .foregroundColor(Metric.foregroundColor)
                    .frame(height: Metric.frameHeight)
                Text(track.author)
                    .foregroundColor(.gray)
            }
            .font(.title2)
            .lineLimit(Metric.lineLimit)
            Spacer()
            PlayerMenu()
        }
    }
}

struct TrackInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TrackInfoView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Земфира", song: "Прости меня моя любовь", image: "земфира", duration: 284))
    }
}

private extension TrackInfoView {
    enum Metric {
        static let hStackSpacing: CGFloat = 5
        static let vStachSpacing: CGFloat = 2
        static let frameHeight: CGFloat = 30
        static let lineLimit = 1

        static let foregroundColor = Color("grayBackground")
    }
}

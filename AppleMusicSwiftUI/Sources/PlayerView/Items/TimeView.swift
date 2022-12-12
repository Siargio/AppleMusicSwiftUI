//
//  TimeView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct TimeView: View {

    @State var currentTime = 0.0
    @State var duration: AlbumDataModel

    var body: some View {
        VStack {
            Slider(value: $currentTime, in: 0...(duration.duration), step: 0.3)
                .tint(.gray)
            HStack {
                Text("\(formatTime(currentTime))")
                Spacer()
                Text("-\(formatTime(duration.duration - currentTime))")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
    }

    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%01i:%02i", minutes, seconds)
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView(duration: AlbumDataModel.mocks[0])
    }
}

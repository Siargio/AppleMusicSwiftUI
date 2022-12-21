//
//  TimeView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct TimeView: View {

    @State var currentTime = Metric.currentTime
    @State var duration: AlbumDataModel

    var body: some View {
        VStack {
            Slider(value: $currentTime, in: 0...(duration.duration), step: Metric.step)
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
        let minutes = Int(time) / Metric.sixty % Metric.sixty
        let seconds = Int(time) % Metric.sixty
        return String(format:Metric.format, minutes, seconds)
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView(duration: AlbumDataModel.mocks[0])
    }
}


private extension TimeView {
    enum Metric {
        static let currentTime = 0.0
        static let step = 0.3
        static let sixty = 60

        static let format = "%01i:%02i"
    }
}

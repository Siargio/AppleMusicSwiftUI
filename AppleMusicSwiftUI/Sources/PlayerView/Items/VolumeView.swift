//
//  VolumeView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct VolumeView: View {

    @State var volume = Metric.volume

    var body: some View {
        HStack(alignment: .center, spacing: Metric.hStackSpacing) {
            Image(systemName: Metric.imageLeft)
            Slider(value: $volume, in: 0...100)
            Image(systemName: Metric.imageRight)

        }
        .tint(.gray)
        .foregroundColor(.gray)
        .font(.caption2)
        .padding(.vertical, Metric.padding)
    }
}

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeView()
    }
}

private extension VolumeView {
    enum Metric {
        static let volume = 30.0
        static let hStackSpacing: CGFloat = 15
        static let padding: CGFloat = 30
        static let imageLeft = "speaker.fill"
        static let imageRight = "speaker.wave.3.fill"
     }
}

//
//  VolumeView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct VolumeView: View {

    @State var volume = 30.0

    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(systemName: "speaker.fill")
            Slider(value: $volume, in: 0...100)
            Image(systemName: "speaker.wave.3.fill")

        }
        .tint(.gray)
        .foregroundColor(.gray)
        .font(.caption2)
        .padding(.vertical, 30)
    }
}

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeView()
    }
}

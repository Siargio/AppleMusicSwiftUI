//
//  ButtonsView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        HStack {
          Spacer()
            HStack(spacing: 60) {
                Button(action: {}) {
                    Image(systemName: "quote.bubble")
                        .tint(Color ("grayBackground"))
                        .font(.title2)
                }
                Button(action: {}) {
                    Image(systemName: "airplayaudio")
                        .tint(Color ("grayBackground"))
                        .font(.title2)
                }
                Button(action: {}) {
                    Image(systemName: "list.bullet")
                        .tint(Color ("grayBackground"))
                        .font(.title2)
                }
            }
            Spacer()
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}

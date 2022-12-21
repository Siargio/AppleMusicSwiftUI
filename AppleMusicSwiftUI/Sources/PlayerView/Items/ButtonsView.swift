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
            HStack(spacing: Metric.hStachSpacing) {
                Button(action: {}) {
                    Image(systemName: Metric.buttonLeftImage)
                        .tint(Metric.buttonTintColor)
                        .font(.title2)
                }
                Button(action: {}) {
                    Image(systemName: Metric.buttonCentreImage)
                        .tint(Metric.buttonTintColor)
                        .font(.title2)
                }
                Button(action: {}) {
                    Image(systemName: Metric.buttonRightImage)
                        .tint(Metric.buttonTintColor)
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

private extension ButtonsView {
    enum Metric {
        static let hStachSpacing: CGFloat = 60

        static let buttonLeftImage = "quote.bubble"
        static let buttonTintColor = Color ("grayBackground")
        static let buttonCentreImage = "airplayaudio"
        static let buttonRightImage = "list.bullet"
    }
}

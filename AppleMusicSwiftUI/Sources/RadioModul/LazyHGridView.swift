//
//  LazyHGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 2.12.22.
//

import SwiftUI

struct LazyHGridView: View {

    var model: RadioModelHGrid

    var body: some View {
        VStack(alignment: .leading) {
            Text(model.firstText)
                .foregroundColor(.secondary)
                .font(.title3)
            Text(model.twoText)
                .font(.title2)
            Text(model.threeText)
                .font(.title3)
                .foregroundColor(.secondary)
            ZStack(alignment: .bottomLeading) {
                Image(model.icon)
                    .resizable()
                    .scaledToFit()
            }
            .cornerRadius(Metric.cornerRadius)
            Spacer()
        }
    }
}

struct LazyHGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView(model: RadioModelHGrid.setups[0])
    }
}

extension LazyHGridView {
    enum Metric {
        static let cornerRadius: CGFloat = 10
    }
}

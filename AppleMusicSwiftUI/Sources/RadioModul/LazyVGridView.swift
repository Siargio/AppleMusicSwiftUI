//
//  LazyVGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 2.12.22.
//

import SwiftUI

struct LazyVGridView: View {

    var model: RadioModelVGrid
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Image(model.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: Metric.frameWidthHeight, height: Metric.frameWidthHeight)
                    .cornerRadius(Metric.cornerRadius)
                    .padding()
                VStack(alignment: .leading) {
                    Text(model.firstText)
                        .font(.title3)
                    Text(model.twoText)
                        .foregroundColor(.secondary)
                }
            }
            Divider()
                .padding(.leading)
        }
    }
}


struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView(model: RadioModelVGrid.setups[0])
    }
}

extension LazyVGridView {
    enum Metric {
        static let frameWidthHeight: CGFloat = 100
        static let cornerRadius: CGFloat = 10
    }
}

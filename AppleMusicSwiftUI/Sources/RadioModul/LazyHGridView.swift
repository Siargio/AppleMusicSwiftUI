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
            Divider()
            Text(model.firstText)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding(.leading, 15)
            Text(model.twoText)
                .font(.title2)
                .padding(.leading, 15)
            Text(model.threeText)
                .font(.title3)
                .padding(.leading, 15)
                .foregroundColor(.secondary)
                .padding(.bottom, -10)
            ZStack(alignment: .bottomLeading) {
                Image(model.icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .cornerRadius(15)
            Spacer()
        }
    }
}


struct LazyHGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView(model: RadioModelHGrid.setups[0])
    }
}

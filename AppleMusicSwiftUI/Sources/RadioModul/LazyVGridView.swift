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
        HStack() {
            Image(model.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.clear)
                Text(model.firstText)
            }
        }
    }
}

struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView(model: RadioModelVGrid.setups[0])
    }
}

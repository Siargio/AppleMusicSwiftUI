//
//  ListRowView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 27.11.22.
//

import SwiftUI

struct ListRowView: View {
    let items: ModelList
    var body: some View {
        HStack {
            Image(systemName: items.icon)
                .foregroundColor(.red)
            Text(items.name)
                .font(.title3)
        }
        .listRowBackground(Color.primary.colorInvert())
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(items: ModelList.model[0])
            //.previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}

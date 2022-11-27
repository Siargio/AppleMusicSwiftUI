//
//  ListRowView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 27.11.22.
//

import SwiftUI

struct ListRowView: View {
    
    let items: ModelList
    @State private var isShowed = false
    
    var body: some View {
        HStack {
            ZStack {
                Button(action: { isShowed.toggle() },
                       label: {
                    Image(systemName: "circle")
                    .foregroundColor(.gray)})
                if isShowed {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.pink)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
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
    }
}

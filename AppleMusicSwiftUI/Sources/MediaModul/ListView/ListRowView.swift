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
                    Metric.imageCircle
                    .foregroundColor(.gray)})
                if isShowed {
                    Metric.imageCircleFill
                        .foregroundColor(.pink)
                        .background(Color.white)
                        .cornerRadius(Metric.cornerRadius)
                }
            }
            Image(systemName: items.icon)
                .foregroundColor(.red)
            Text(items.name)
                .font(.title3)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(items: ModelList.model[0])
    }
}

private extension ListRowView {
    enum Metric {
        static let imageCircle = Image(systemName:"circle")
        static let imageCircleFill = Image(systemName: "checkmark.circle.fill")

        static let cornerRadius: CGFloat = 10
    }
}

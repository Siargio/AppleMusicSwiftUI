//
//  HorizontalSectionTitleView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct HorizontalSectionTitleView: View {

    @Binding var title: String

    var body: some View {
        VStack{
            Divider()
                .padding([.horizontal])
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Button(Metric.buttonText) {
                }
                .foregroundColor(.red)
            }
            .padding([.horizontal])
        }
    }
}

struct HorizontalSectionTitleView_Previews: PreviewProvider {
    @State static var title: String = "Популярные треки"
    static var previews: some View {
        HorizontalSectionTitleView(title: $title)
    }
}

private extension HorizontalSectionTitleView {
    enum Metric {
        static let buttonText = "См. все"
    }
}

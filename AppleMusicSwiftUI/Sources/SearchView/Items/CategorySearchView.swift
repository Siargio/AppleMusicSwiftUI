//
//  CategorySearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct CategorySearchView: View {

    var modelData: [CategoryModel] = CategoryModel.mocks
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: Metric.vStackSpacing) {
            Divider()
            Text(Metric.text)
                .font(.title2)
                .bold()
            LazyVGrid(columns: columns) {
                ForEach(modelData) { datum in
                    NavigationLink {
                        CategorySearchDetailView()
                    } label: {
                        ZStack(alignment: .bottomLeading) {
                            Image(datum.image)
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: Metric.clipShapeCornetRadius))
                            Text(datum.title)
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.vertical, Metric.paddingVertical)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, Metric.paddingBottom)
    }
}

struct CategorySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchView()
    }
}

private extension CategorySearchView {
    enum Metric {
        static let text = "Поиск по категориям"
        static let vStackSpacing: CGFloat = 8
        static let clipShapeCornetRadius: CGFloat = 10
        static let paddingVertical: CGFloat = 10
        static let paddingBottom: CGFloat = 90
    }
}

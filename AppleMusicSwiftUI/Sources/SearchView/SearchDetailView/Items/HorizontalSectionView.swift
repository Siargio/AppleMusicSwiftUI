//
//  HorizontalSectionView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct HorizontalSectionView: View {

    var modelData: [AlbumDataModel] = AlbumDataModel.mocks
    @State var title: String
    @State var hasTwoRows = false
    var geometry: GeometryProxy

    let rows = [
        GridItem(.fixed(Metric.gridItemFixed))
    ]

    let doubleRows = [
        GridItem(.fixed(Metric.gridItemFixed)),
        GridItem(.fixed(Metric.gridItemFixed))
    ]

    var body: some View {
        VStack(alignment: .leading) {
            HorizontalSectionTitleView(title: $title)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: hasTwoRows ? doubleRows : rows) {
                    ForEach(modelData) { datum in
                        HorizontalCellView(album: datum)
                            .frame(width: geometry.size.width / Metric.frameDivide)
                    }
                }
                .padding([.horizontal])
            }
        }
        .padding([.top])
    }
}

struct HorizontalSectionView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            HorizontalSectionView(title: "Пространственное аудио", geometry: geometry)
        }
    }
}

private extension HorizontalSectionView {
    enum Metric {
        static let gridItemFixed: CGFloat = 230
        static let frameDivide: CGFloat = 2.15
    }
}

//
//  HorizontalListView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct HorizontalListView: View {

    var modelData: [AlbumDataModel] = AlbumDataModel.mocks
    var geometry: GeometryProxy
    @State var title: String
    let rows = [
        GridItem(.fixed(Metric.fixed)),
        GridItem(.fixed(Metric.fixed))
    ]

    var body: some View {
        VStack(alignment: .leading) {
            HorizontalSectionTitleView(title: $title)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(modelData) { album in
                        HorizontalListCellView(album: album)
                            .frame(width: geometry.size.width * Metric.frameMultiply)
                    }
                }
                .padding([.horizontal])
            }
        }
        .padding([.top])
    }
}

struct HorizontalListView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            HorizontalListView(geometry: geometry, title: "Популярные треки")
        }
    }
}

private extension HorizontalListView {
    enum Metric {
        static let fixed: CGFloat = 51
        static let frameMultiply: CGFloat = 0.92
    }
}

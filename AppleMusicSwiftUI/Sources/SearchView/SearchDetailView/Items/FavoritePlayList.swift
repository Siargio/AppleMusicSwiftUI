//
//  FavoritePlayList.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct FavoritePlayList: View {

    var modelData: [AlbumCategoryModel] = AlbumCategoryModel.mocks
    let rows = [GridItem(.adaptive(minimum: Metric.adaptiveMin, maximum: Metric.adaptiveMax))]
    @State private var albumLibrary = CategoryModel.mocks
    var geometry: GeometryProxy

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(modelData) { datum in
                    FavoritePlayListSection(album: datum)
                        .frame(width: geometry.size.width * Metric.frameMultiply)
                }
            }
            .padding([.horizontal])
        }
    }
}

struct FavoritePlayList_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            FavoritePlayList(geometry: geometry)
        }
    }
}

private extension FavoritePlayList {
    enum Metric {
        static let adaptiveMin: CGFloat = 280
        static let adaptiveMax: CGFloat = 320
        static let frameMultiply: CGFloat = 0.92
    }
}

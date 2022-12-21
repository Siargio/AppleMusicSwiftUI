//
//  CategorySearchDetailView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct CategorySearchDetailView: View {
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                GeometryReader { geometry in
                    ScrollView(.vertical, showsIndicators: true) {
                        FavoritePlayList(geometry: geometry)
                        HorizontalSectionView(title: Metric.horizontalSectionTitleFirst,
                                              hasTwoRows: true,
                                              geometry: geometry)
                        HorizontalListView(geometry: geometry,
                                           title: Metric.horizontalListTitle)
                        HorizontalSectionView(title: Metric.horizontalSectionTitleTwo,
                                              geometry: geometry)
                    }
                }
            }
            .navigationTitle(Metric.navigationTitle)
            .navigationBarTitleDisplayMode(.large)
            .padding(.bottom, Metric.padding)
        }
    }
}

struct CategorySearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchDetailView()
    }
}

private extension CategorySearchDetailView {
    enum Metric {
        static let horizontalSectionTitleFirst = "Популярные плейлисты"
        static let horizontalListTitle = "Лучшие новые треки"
        static let horizontalSectionTitleTwo = "Пространственное аудио"
        static let navigationTitle = "Главное"

        static let padding: CGFloat = 80
    }
}

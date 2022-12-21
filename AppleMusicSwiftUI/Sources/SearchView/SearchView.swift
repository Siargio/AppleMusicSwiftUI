//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct SearchView: View {

    @State var searchText = ""
    var modelData: [AlbumDataModel] = AlbumDataModel.mocks

    var body: some View {
        ZStack {
            ScrollView {
                CategorySearchView()
            }
            .navigationBarTitle(Metric.search, displayMode: .large)
            .navigationViewStyle(.stack)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always),
                        prompt: Metric.prompt)
            VStack {
                Spacer()
                Player()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

private extension SearchView {
    enum Metric {
        static let search = "Поиск"
        static let prompt = "Артисты, песни, тексты и т.д."
    }
}

//
//  ListView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 27.11.22.
//

import SwiftUI

struct ListView: View {

    var models: [ModelList] = ModelList.model
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(models, id: \.name) { model in
                        ListRowView(items: model)
                            .listRowSeparator(.visible)
                    } .onMove(perform: move)
                }
                .environment(\.editMode, .constant(.active))
                .listStyle(.plain)
                .navigationTitle(Strings.media)
                .navigationBarItems(trailing: Button(action: {
                    dismiss()
                }) {
                    Text(Strings.TextReady)
                        .foregroundColor(.red)
                })
            } .navigationBarBackButtonHidden(true)
            Player()
        }
    }

    func move(from source: IndexSet, to destination: Int) {
        ModelList.model.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

private extension ListView {
    enum Strings {
        static let media = "Медиатека"
        static let TextReady = "Готово"
    }
}

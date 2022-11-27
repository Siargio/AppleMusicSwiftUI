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
                .navigationTitle("Медиатека")
                .navigationBarItems(trailing: Button(action: {
                    dismiss()
                }) {
                    Text("Готово")
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

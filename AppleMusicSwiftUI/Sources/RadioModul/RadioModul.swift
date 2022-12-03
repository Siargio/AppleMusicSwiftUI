//
//  RadioModule.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 2.12.22.
//

import SwiftUI

struct RadioModule: View {

    var modelH: [RadioModelHGrid] = RadioModelHGrid.setups
    var modelV: [RadioModelVGrid] = RadioModelVGrid.setups
    let rows = [GridItem(.flexible())]
    let columns = [GridItem(.flexible())]

    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                Divider()
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(modelH) { modelH in
                            LazyHGridView(model: modelH)
                        }
                        .frame(width: UIScreen.main.bounds.width - Metric.frameMain)
                        .padding(.horizontal)
                    }
                }
                VStack {
                    Divider()
                }
                VStack(alignment: .leading) {
                    Text(Metric.textStation)
                        .font(.title2)
                        .bold()
                        .padding(.leading)
                        .padding(.top)

                    LazyVGrid(columns: columns) {
                        ForEach(modelV) { modelV in
                            LazyVGridView(model: modelV)
                        }
                    }
                }
            }
            .navigationTitle(Metric.textRadio)
            Player()
        }
    }
}

struct RadioModule_Previews: PreviewProvider {
    static var previews: some View {
        RadioModule()
    }
}

extension RadioModule {
    enum Metric {
        static let textStation = "Станции"
        static let textRadio = "Радио"

        static let frameMain: CGFloat = 70
    }
}

//
//  RadioModule.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 2.12.22.
//

import SwiftUI

struct RadioModule: View {

    var modelH: [RadioModelHGrid] = RadioModelHGrid.setups
    var modelV: RadioModelVGrid
    let rows = [GridItem(.flexible())]

    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(modelH) { modelH in
                        
                    }

                        //.navigationTitle("Радио")
                }
            }
            Player()
        }
    }
}

struct RadioModule_Previews: PreviewProvider {
    static var previews: some View {
        RadioModule(modelH: modelH, modelV: RadioModelVGrid.setups[0])
    }
}

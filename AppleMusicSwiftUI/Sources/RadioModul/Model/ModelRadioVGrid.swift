//
//  ModelRadioVGrid.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 2.12.22.
//

import SwiftUI

struct RadioModelVGrid: Hashable, Identifiable {
    var id = UUID()
    var firstText: String
    var twoText: String
    var icon: String

    static var setups: [RadioModelVGrid] = [
        RadioModelVGrid(
            firstText: "Музыка для расслабления",
            twoText: "Электронная медитация",
            icon: "радио релакс"),
        RadioModelVGrid(
            firstText: "Популярное",
            twoText: "То, что слушают сейчас",
            icon: "популярное радио2"),
        RadioModelVGrid(
            firstText: "Классика электронной музыки",
            twoText: "Как рождался саунд будущего",
            icon: "электронное радио"),
        RadioModelVGrid(
            firstText: "Класика рока",
            twoText: "Гении гитарного звука",
            icon: "рок классика"),
        RadioModelVGrid(
            firstText: "Классика",
            twoText: "Выдающиеся образцы жанра",
            icon: "классик радио"),
        RadioModelVGrid(
            firstText: "Хип-хоп",
            twoText: "Идеальные биты и рифмы",
            icon: "радио хипхоп"),
    ]
}

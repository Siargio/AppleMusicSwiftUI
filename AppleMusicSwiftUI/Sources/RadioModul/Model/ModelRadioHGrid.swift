//
//  ModelRadio.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 2.12.22.
//

import SwiftUI

struct RadioModelHGrid: Hashable, Identifiable {
    var id = UUID()
    var firstText: String
    var twoText: String
    var threeText: String
    var icon: String

    static var setups: [RadioModelHGrid] = [RadioModelHGrid(
        firstText: "Новый выпуск",
        twoText: "Музыкальный базар с Бастой",
        threeText: "Новое шоу",
        icon: "баста"),
                                            RadioModelHGrid(firstText: "Избранная радиостанция",
                                                            twoText: "Популярное",
                                                            threeText: "То, что слушают прямо сейчас",
                                                            icon: "популярное радио"),
                                            RadioModelHGrid(firstText: "Новая радиостанция",
                                                            twoText: "ПОП",
                                                            threeText: "Отборные биты и рифмы",
                                                            icon: "хип-хоп"),
                                            RadioModelHGrid(firstText: "Избранное",
                                                            twoText: "Только поп-музыка",
                                                            threeText: "Все топ-хиты",
                                                            icon: "поп музыка"),
                                            RadioModelHGrid(firstText: "Избранная радиостанция",
                                                            twoText: "Поп-музыка для тренировок",
                                                            threeText:"Вперед и с музыкой",
                                                            icon: "музыка для тренировки"),
                                            RadioModelHGrid(firstText: "Избранная радиостанция",
                                                            twoText: "Электронная музыка",
                                                            threeText: "Пульт с лучшими треками",
                                                            icon: "электронная музыка"),
                                            RadioModelHGrid(firstText: "Новая радиостанция",
                                                            twoText: "Классика рока",
                                                            threeText: "Гении гитарного звука",
                                                            icon: "классика рока"),
                                            RadioModelHGrid(firstText: "Избранная радиостанция",
                                                            twoText: "Танцевальная музыка",
                                                            threeText: "Современные будущие хиты",
                                                            icon: "танцевальная музыка")]
}

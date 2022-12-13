//
//  CategoryModel.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let image: String

    static var mocks: [CategoryModel] = [
        CategoryModel(title: "Зимнее время", image: "зимнее"),
        CategoryModel(title: "Поп на русском", image: "поп на русском"),
        CategoryModel(title: "Поп", image: "поп"),
        CategoryModel(title: "Альтернатива", image: "альтернатива"),
        CategoryModel(title: "Пространственное звучание", image: "пространственное звучание"),
        CategoryModel(title: "Хип-хоп на русском", image: "хипхоп на русском"),
        CategoryModel(title: "Спорт", image: "спорт"),
        CategoryModel(title: "Сон", image: "сон"),
        CategoryModel(title: "Зарубежные хиты", image: "хиты1"),
        CategoryModel(title: "Электроника", image: "электроника"),
        CategoryModel(title: "Спокойствие", image: "спокойствие"),
        CategoryModel(title: "Хиты", image: "хиты"),
        CategoryModel(title: "Чарты", image: "чарты"),
        CategoryModel(title: "Танцевальная", image: "танцевальная"),
        CategoryModel(title: "Рок", image: "рок"),
        CategoryModel(title: "2000-е", image: "2000"),
    ]
}

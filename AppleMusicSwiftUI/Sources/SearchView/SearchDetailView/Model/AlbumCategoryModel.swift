//
//  AlbumCategoryModel.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import Foundation

struct AlbumCategoryModel: Identifiable, Hashable {
    var id = UUID()
    var titleDescription: String
    var title: String
    var description: String
    var image: String

    static var mocks: [AlbumCategoryModel] = [
        AlbumCategoryModel(titleDescription: "Ностальгия по поп-музыке 2000-х",
                   title: "Apple Music Поп",
                   description: "Яркие композиции, украшавшие мировые чарты на рубеже тысячелетий.",
                   image: "popAlbum"),
        AlbumCategoryModel(titleDescription: "Родные песни",
                   title: "Apple Music Хиты на русском",
                   description: "Отечественные поп- и рок-хиты, полные теплоты и душевности.",
                   image: "songs"),
        AlbumCategoryModel(titleDescription: "Песни для детей: главное",
                   title: "Apple Music Для детей",
                   description: "Солнечные, добрые, мелодии из любимых мультфильмов и не только.",
                   image: "kids"),
        AlbumCategoryModel(titleDescription: "Золотой запас",
                   title: "Apple Music Поп",
                   description: "Хиты прошлого, которые никогда не наскучат.",
                   image: "gold"),
        AlbumCategoryModel(titleDescription: "Поп на русском: главное",
                   title: "Apple Music Поп на русском",
                   description: "Легендарные хиты прошлого и настоящего.",
                   image: "main"),
        AlbumCategoryModel(titleDescription: "Ностальгия по ню-металу",
                   title: "Apple Music Хард-рок",
                   description: "Неистовые, мощные и новаторские треки от главных героев жанра.",
                   image: "rockAlbum")
    ]
}

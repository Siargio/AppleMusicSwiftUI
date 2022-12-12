//
//  ModelSearch.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct AlbumDataModel: Hashable, Identifiable {
    var id = UUID()
    var author: String
    var song: String
    var image: String
    var duration: Double

    static var mocks: [AlbumDataModel] = [
        AlbumDataModel(author: "Fall Out Boy",
                       song: "This Ain't a Scene, It's an Arms",
                       image: "fallOutBoy",
                       duration: 186.0),
        AlbumDataModel(author: "Iggy Pop",
                       song: "The Passenger",
                       image: "iggyPop",
                       duration: 210.0),
        AlbumDataModel(author: "Пилот",
                       song: "Шнурок",
                       image: "пилот",
                       duration: 240.0),
        AlbumDataModel(author: "Земфира",
                       song: "Прости меня моя любовь",
                       image: "земфира",
                       duration: 284.0),
        AlbumDataModel(author: "Иоганн Себастьян Бах",
                       song: "Sonata in E Minor BWV 1034: Allegro",
                       image: "bach",
                       duration: 186.0),
        AlbumDataModel(author: "Chaёl",
                       song: "Don't speak",
                       image: "chaёl",
                       duration: 210.0),
        AlbumDataModel(author: "Леша Свик",
                       song: "Танцевали до утра",
                       image: "svik",
                       duration: 240.0),
        AlbumDataModel(author: "ANNA ASTI",
                       song: "Феникс",
                       image: "asti",
                       duration: 284.0),
        AlbumDataModel(author: "Akmal'",
                       song: "По полюшку",
                       image: "akmal",
                       duration: 186.0),
        AlbumDataModel(author: "Moneybagg Yo",
                       song: "Time Today",
                       image: "moneybagg",
                       duration: 200.0),
    ]
}

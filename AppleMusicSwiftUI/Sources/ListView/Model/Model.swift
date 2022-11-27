//
//  Model.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 27.11.22.
//

import SwiftUI

struct ModelList: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let icon: String

    static var model: [ModelList] = [ModelList(name: "Плейлисты",
                                               icon: "music.note.list"),
                                     ModelList(name: "Артисты",
                                               icon: "music.mic"),
                                     ModelList(name: "Альбомы",
                                               icon: "square.stack"),
                                     ModelList(name: "Песни",
                                               icon: "music.note"),
                                     ModelList(name: "Телешоу и фильмы",
                                               icon: "tv"),
                                     ModelList(name: "Видеоклипы",
                                               icon: "music.note.tv"),
                                     ModelList(name: "Жанры",
                                               icon: "guitars"),
                                     ModelList(name: "Сборники",
                                               icon: "person.2.crop.square.stack"),
                                     ModelList(name: "Авторы",
                                               icon: "music.quarternote.3"),
                                     ModelList(name: "Загружено",
                                               icon: "arrow.down.circle"),
                                     ModelList(name: "Домашняя коллекция",
                                               icon: "music.note.house")]
}

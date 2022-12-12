//
//  PlayerMenu.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 12.12.22.
//

import SwiftUI

struct PlayerMenu: View {
    var body: some View {
        Menu {
            Section {
                Button {
                } label: {
                    Label("Предлагать меньше похожих", systemImage: "hand.thumbsdown")
                }
                Button {
                } label: {
                    Label("Нравится", systemImage: "heart")
                }
            }
            Section {
                Button {
                } label: {
                    Label("Показать альбом", systemImage: "music.note")
                }
                Button {
                } label: {
                    Label("Поделиться песней", systemImage: "square.and.arrow.up")
                }
            }
            Section {
                Button {
                } label: {
                    Label("Добавить в плейлист", systemImage: "text.badge.plus")
                }
                Button {
                } label: {
                    Label("Удалить из Медиатеки", systemImage: "trash")
                }
            }
        } label: {
            Image(systemName: "ellipsis.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .background(
                    Color("grayBackground")
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                )
                .foregroundColor(Color("darkGray").opacity(0.8))
        }
        .foregroundColor(.clear)
        .accentColor(.primary)
    }
}

struct PlayerMenu_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMenu()
    }
}

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
                    Label(Metric.buttonFirstLabel, systemImage: Metric.buttonFirstImage)
                }
                Button {
                } label: {
                    Label(Metric.buttonTwoLabel, systemImage: Metric.buttonTwoImage)
                }
            }
            Section {
                Button {
                } label: {
                    Label(Metric.buttonThreeLabel, systemImage: Metric.buttonThreeImage)
                }
                Button {
                } label: {
                    Label(Metric.buttonFourLabel, systemImage: Metric.buttonFourImage)
                }
            }
            Section {
                Button {
                } label: {
                    Label(Metric.buttonFifeLabel, systemImage: Metric.buttonFifeImage)
                }
                Button {
                } label: {
                    Label(Metric.buttonSixLabel, systemImage: Metric.buttonSixImage)
                }
            }
        } label: {
            Image(systemName: Metric.imageLabel)
                .resizable()
                .scaledToFit()
                .frame(width: Metric.frameWidthAndHeight, height: Metric.frameWidthAndHeight)
                .background(
                    Metric.backgroundColor
                        .clipShape(RoundedRectangle(cornerRadius: Metric.cornerRadius))
                )
                .foregroundColor(Metric.foregroundColor.opacity(Metric.opacity))
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

private extension PlayerMenu {
    enum Metric {
        static let buttonFirstLabel = "Предлагать меньше похожих"
        static let buttonFirstImage = "hand.thumbsdown"

        static let buttonTwoLabel = "Нравится"
        static let buttonTwoImage = "heart"

        static let buttonThreeLabel = "Показать альбом"
        static let buttonThreeImage = "music.note"

        static let buttonFourLabel = "Поделиться песней"
        static let buttonFourImage = "square.and.arrow.up"

        static let buttonFifeLabel = "Добавить в плейлист"
        static let buttonFifeImage = "text.badge.plus"

        static let buttonSixLabel = "Удалить из Медиатеки"
        static let buttonSixImage = "trash"

        static let imageLabel = "ellipsis.circle.fill"
        static let backgroundColor = Color("grayBackground")
        static let foregroundColor = Color("darkGray")

        static let frameWidthAndHeight: CGFloat = 24
        static let cornerRadius: CGFloat = 18
        static let opacity: CGFloat = 0.8

    }
}

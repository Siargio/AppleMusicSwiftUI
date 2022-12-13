//
//  FavoritePlayListSection.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct FavoritePlayListSection: View {

    var album: AlbumCategoryModel

    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text(Metric.text)
                .font(.caption2)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
            Text(album.titleDescription)
                .foregroundColor(.primary)
                .font(.title3)
                .textCase(.uppercase)
            Text(album.title)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
                .font(.title3)
            ZStack(alignment: .bottomLeading) {
                Image(album.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(Metric.imageCornetRadius)
                Text(album.title)
                    .font(.caption)
                    .padding(Metric.textPadding)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                            .opacity(Metric.textOpacity)
                        )
                    .shadow(color: .black, radius: Metric.shadowRadius, x: Metric.radiusX, y: Metric.radiusY)
            }
            .cornerRadius(Metric.cornerRadius)
            .clipped()
        }
    }
}

struct FavoritePlayListSection_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePlayListSection(album: AlbumCategoryModel.mocks[0])
    }
}

private extension FavoritePlayListSection {
    enum Metric {
        static let text = "Избранный плейлист"

        static let imageCornetRadius: CGFloat = 8
        static let textPadding: CGFloat = 10
        static let textOpacity: CGFloat = 0.5
        static let shadowRadius: CGFloat = 8
        static let radiusX: CGFloat = 0
        static let radiusY: CGFloat = -5
        static let cornerRadius: CGFloat = 10
    }
}

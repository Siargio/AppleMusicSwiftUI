//
//  HorizontalCellView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct HorizontalCellView: View {

    var album: AlbumDataModel

    var body: some View {
        VStack(alignment: .leading, spacing: Metric.vStackSpacing) {
            Image(album.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(Metric.imageCornetRadius)
            Text(album.song)
                .foregroundColor(.primary)
                .font(.caption)
                .multilineTextAlignment(.leading)
                .lineLimit(Metric.textLineLimit)
                .minimumScaleFactor(Metric.textMinimumScaleFactor)
            Text(album.author)
                .foregroundColor(.secondary)
                .font(.caption)
                .lineLimit(Metric.textLineLimit)
                .minimumScaleFactor(Metric.textMinimumScaleFactor)
        }
    }
}

struct HorizontalCellView_Previews: PreviewProvider {
    static let modelData: [AlbumDataModel] = AlbumDataModel.mocks

    static var previews: some View {
        HorizontalCellView(album: modelData[0])
    }
}

private extension HorizontalCellView {
    enum Metric {
        static let vStackSpacing: CGFloat = 2
        static let imageCornetRadius: CGFloat = 6
        static let textLineLimit = 0
        static let textMinimumScaleFactor: CGFloat = 0.01
    }
}

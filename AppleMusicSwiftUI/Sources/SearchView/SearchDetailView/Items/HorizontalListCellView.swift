//
//  HorizontalListCellView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct HorizontalListCellView: View {

    var album: AlbumDataModel

    var body: some View {
        HStack(alignment: .top, spacing: Metric.hStackSpacing) {
            Image(album.image)
                .resizable()
                .scaledToFit()
                .frame(width: Metric.frameWidthHeight, height: Metric.frameWidthHeight)
                .cornerRadius(Metric.imageCornetRadius)
                .padding(.top, Metric.paddingTop)
            VStack {
                Divider()
                HStack {
                    VStack(alignment: .leading, spacing: Metric.vStackSpacing) {
                        Text(album.song)
                            .foregroundColor(.primary)
                            .lineLimit(Metric.lineLimit)
                            .minimumScaleFactor(Metric.minimumScaleFactor)
                        Text(album.author)
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    Spacer()
                    Metric.image
                        .padding(.trailing)
                }
                .frame(maxHeight: .infinity)
            }
            .frame(height: Metric.frameHeight)
        }
    }
}

struct HorizontalListCellView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalListCellView(album: AlbumDataModel.mocks[0])
            .previewInterfaceOrientation(.landscapeRight)
    }
}

private extension HorizontalListCellView {
    enum Metric {
        static let hStackSpacing: CGFloat = 10
        static let frameWidthHeight: CGFloat = 46
        static let imageCornetRadius: CGFloat = 5
        static let paddingTop: CGFloat = 5
        static let vStackSpacing: CGFloat = 2
        static let lineLimit = 0
        static let minimumScaleFactor: CGFloat = 0.01
        static let frameHeight: CGFloat = 46

        static let image = Image(systemName: "ellipsis")
    }
}

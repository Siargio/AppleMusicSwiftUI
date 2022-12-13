//
//  AlbumSectionView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 13.12.22.
//

import SwiftUI

struct AlbumSectionView: View {

    var album: AlbumDataModel

    var body: some View {
        HStack() {
            Image(album.image)
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.clear)
                Text(album.author)
                    .foregroundColor(.primary)
                Text(album.song)
                    .foregroundColor(.secondary)
                    .font(.caption)
                Rectangle()
                    .foregroundColor(.clear)
            }
            .frame(height: 100)
            Image(systemName: "ellipsis")
            Spacer()
        }
    }
}

struct AlbumSectionView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumSectionView(album: AlbumDataModel.mocks[0])
    }
}

//
//  SearchDetailUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 17.12.22.
//

import SwiftUI

final class SearchDetailUIKitView:
    UIHostingController<CategorySearchDetailView> {

    init() {
        super.init(rootView: CategorySearchDetailView())
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
    }
}

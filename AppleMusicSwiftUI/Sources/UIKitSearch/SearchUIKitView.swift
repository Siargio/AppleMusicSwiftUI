//
//  SearchUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 17.12.22.
//

import SwiftUI
import UIKit

struct SearchUIKitView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchViewController())
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

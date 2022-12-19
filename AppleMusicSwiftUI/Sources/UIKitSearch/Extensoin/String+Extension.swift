//
//  String+Extension.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 17.12.22.
//

import Foundation

extension Optional where Wrapped == String {

    var isEmptyOrNil: Bool {
        return self?.isEmpty != false
    }
}

//
//  HeaderView.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 17.12.22.
//

import UIKit

class HeaderView: UICollectionReusableView {
    // MARK: - Properties

    static let reuseID = Metric.reuseID

    lazy var lineSeparators: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray4
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()

    lazy var label: UILabel = {
        let lable = UILabel()
        lable.textAlignment = .left
        lable.font = .systemFont(ofSize: Metric.systemFontSize, weight: .bold)
        lable.textColor = .label
        lable.text = Metric.labelText
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
}

// MARK: - Configuration

extension HeaderView {

    func configure() {
        addSubview(lineSeparators)
        addSubview(label)

        NSLayoutConstraint.activate([
            lineSeparators.topAnchor.constraint(equalTo: topAnchor),
            lineSeparators.heightAnchor.constraint(equalToConstant: Metric.lineSeparatorsHeight),
            lineSeparators.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            lineSeparators.trailingAnchor.constraint(equalTo: self.trailingAnchor),

            label.topAnchor.constraint(equalTo: lineSeparators.bottomAnchor, constant: Metric.labelTopAnchor),
            label.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        ])
    }
}

extension HeaderView {
    enum Metric {
        static let reuseID = "Header"
        static let labelText = "Поиск по категориям"
        static let systemFontSize: CGFloat = 22
        static let lineSeparatorsHeight: CGFloat = 1
        static let labelTopAnchor: CGFloat = 6
    }
}

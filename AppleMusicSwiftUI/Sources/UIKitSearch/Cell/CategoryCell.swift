//
//  CategoryCell.swift
//  AppleMusicSwiftUI
//
//  Created by Sergio on 17.12.22.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    // MARK: - Properties

    static let reuseID = Strings.reuseID

    // MARK: - Views

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = Metric.radius
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: Metric.textFontBold, weight: .bold)
        label.textColor = UIColor.white
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = Metric.numberOfLines
        label.setContentCompressionResistancePriority(
            .defaultHigh,
            for: .horizontal)
        label.adjustsFontForContentSizeCategory = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration

extension CategoryCell {

    private func configure() {
        addSubview(imageView)
        addSubview(nameLabel)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),

            nameLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: Metric.indent),
            nameLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -Metric.indent),
            nameLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -Metric.bottomIndent)
        ])
    }
}

// MARK: - Constants

extension CategoryCell {

    enum Metric {
        static let radius: CGFloat = 12
        static let textFontBold: CGFloat = 14
        static let numberOfLines: Int = 2
        static let indent: CGFloat = 14
        static let bottomIndent: CGFloat = 8
    }

    enum Strings {
        static let reuseID: String = "CategoryCell"
    }
}

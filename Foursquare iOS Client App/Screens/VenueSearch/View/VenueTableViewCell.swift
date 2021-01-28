//
//  VenueTableViewCell.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import Kingfisher

final class VenueTableViewCell: CustomTableViewCell {
    // MARK: - Properties
    
    var imageURL: URL? {
        didSet {
            venueImageView.kf.setImage(with: imageURL)
        }
    }
    
//    var venueImage: UIImage? {
//        get {
//            venueImageView.image
//        }
//        set {
//            venueImageView.image = newValue
//        }
//    }
    
    var venueName: String? {
        get {
            venueNameLabel.text
        }
        set {
            venueNameLabel.text = newValue
        }
    }
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16.0
        view.clipsToBounds = true
        view.backgroundColor = UIColor(white: 0.1, alpha: 1.0)
        return view
    }()
    
    private lazy var venueImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private lazy var venueNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Lifecycle
    override func prepareLayout() {
        super.prepareLayout()
        setupContainerViewLayout()
        setupVenueImageViewLayout()
        setupVenueNameLabelLayout()
    }
    
    // MARK: - Methods
    private func setupContainerViewLayout() {
        contentView.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.leading.equalTo(16.0)
            make.top.equalToSuperview()
            make.trailing.equalTo(-16.0)
            make.bottom.equalTo(-8.0)
        }
    }
    
    private func setupVenueImageViewLayout() {
        containerView.addSubview(venueImageView)
        venueImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.greaterThanOrEqualTo(UIScreen.main.bounds.width)
        }
    }
    
    private func setupVenueNameLabelLayout() {
        containerView.addSubview(venueNameLabel)
        venueNameLabel.snp.makeConstraints{ make in
            make.leading.equalTo(8.0)
            make.top.equalTo(venueImageView.snp.bottom).offset(4.0)
            make.trailing.equalTo(-8.0)
            make.bottom.equalTo(-8.0)
        }
    }
}

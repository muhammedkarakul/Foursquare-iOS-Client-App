//
//  CustomTableViewCell.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell, Layoutable {
    // MARK: - Init
    init() {
        super.init(style: .default, reuseIdentifier: nil)
        linkInteractor()
        configureAppearance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    func linkInteractor() {}
    
    func configureAppearance() {}
    
    func prepareLayout() {}
}

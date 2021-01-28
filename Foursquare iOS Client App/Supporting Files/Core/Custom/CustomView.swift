//
//  CustomView.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import UIKit

class CustomView: UIView, Layoutable {
    
    required init() {
        super.init(frame: .zero)
        linkInteractor()
        configureAppearance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func linkInteractor() {}
    
    func configureAppearance() {}
    
    func prepareLayout() {}
    
    static func create() -> Self {
        let view = Self()
        return view
    }
}

//
//  CustomViewController.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import UIKit

class CustomViewController<T: CustomView>: UIViewController, Layoutable {
    // MARK: - Properties
    typealias ViewType = T
    
    // MARK: - Init
    init() {
        super.init(nibName: nil, bundle: nil)
        linkInteractor()
        configureAppearance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Lifecycle
    override func loadView() {
        super.loadView()
        view = ViewType.create()
    }
    
    // MARK: - Methods
    func linkInteractor() {}
    
    func configureAppearance() {}
    
    func prepareLayout() {}
}

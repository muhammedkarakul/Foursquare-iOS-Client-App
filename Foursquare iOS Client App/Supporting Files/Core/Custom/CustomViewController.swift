//
//  CustomViewController.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import UIKit

class CustomViewController<T: CustomView>: UIViewController {
    // MARK: - Properties
    typealias ViewType = T
    
    override func loadView() {
        super.loadView()
        view = ViewType.create()
    }
}

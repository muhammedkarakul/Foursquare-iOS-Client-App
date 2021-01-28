//
//  CustomTableViewController.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import UIKit

class CustomTableViewController: UITableViewController, Layoutable {
    
    // MARK: - Init
    init () {
        super.init(nibName: nil, bundle: nil)
        linkInteractor()
        configureAppearance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layoutable
    func linkInteractor() {}
    
    func configureAppearance() {}
    
    func prepareLayout() {}
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        .zero
    }

}

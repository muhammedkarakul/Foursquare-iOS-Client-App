//
//  VenueSearchTableViewController.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import UIKit

final class VenueSearchTableViewController: CustomTableViewController {
    // MARK: - Properties
    private lazy var venueSearchController: UISearchController = {
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Type something here to search"
        return search
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = venueSearchController
    }
    
    override func linkInteractor() {
        super.linkInteractor()
        navigationItem.searchController = venueSearchController
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        title = "Initial"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: - UISearchResultsUpdating
extension VenueSearchTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
}

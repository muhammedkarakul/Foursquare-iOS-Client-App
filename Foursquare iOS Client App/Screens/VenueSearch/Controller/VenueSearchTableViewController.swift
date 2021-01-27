//
//  VenueSearchTableViewController.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import UIKit

final class VenueSearchTableViewController: CustomTableViewController {
    // MARK: - Properties
    private var venues = [Venue]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    private lazy var venueSearchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Type something here to search"
        return searchController
    }()
    
    // MARK: - Lifecycle
    override func linkInteractor() {
        super.linkInteractor()
        navigationItem.searchController = venueSearchController
        venueSearchController.searchBar.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        title = "Initial"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        venues.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = venues[indexPath.row].name
        return cell
    }
}

// MARK: - UISearchResultsUpdating
extension VenueSearchTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        if text.count > 2 {
//            FoursquareAPI.searchVenue(query: text) { response, error in
//                if let error = error {
//                    fatalError(error.localizedDescription)
//                }
//                guard let venues = response?.venues else { return }
//                self.venues = venues
//            }
        }
    }
}

extension VenueSearchTableViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text else { return }
        FoursquareAPI.searchVenue(query: text) { response, error in
            if let error = error {
                fatalError(error.localizedDescription)
            }
            guard let venues = response?.venues else { return }
            self.venues = venues
        }
    }
    
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        view.endEditing(true)
//    }
}

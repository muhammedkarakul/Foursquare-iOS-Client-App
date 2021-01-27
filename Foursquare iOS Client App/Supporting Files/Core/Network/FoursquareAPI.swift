//
//  FoursquareAPI.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import Alamofire

class FoursquareAPI {
    private let clientId = "Your foursquare client id."
    private let clientSecret = "Your foursquare client secret."
    private let baseURLString = "https://api.foursquare.com/v2/venues"
    
    func searchVenue(query: String) {
        Alamofire.request("").responseJSON { response in
            
        }
    }
}

enum FoursquareAPIRouter {
    case venueSearch(request: VenueSearchRequest)
    
    private var baseURLString: String { "https://api.foursquare.com/v2/venues" }
}

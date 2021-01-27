//
//  FoursquareAPI.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import Alamofire

class FoursquareAPI {
    private let clientId = "0AA4YY5CJGMQHNUARRQC53XVYYMB0DT5BIPOWKCIJMXXM2EI"
    private let clientSecret = "GAVUJSWO151O0MMTQ51UVUTTTQ2W1ZVXIPWFWTKGNFYZ0GC0"
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

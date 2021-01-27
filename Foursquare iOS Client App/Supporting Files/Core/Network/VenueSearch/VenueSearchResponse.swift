//
//  VenueSearchResponse.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import Foundation

struct VenueSearchResponse: Decodable {
    let venues: [Venue]
}

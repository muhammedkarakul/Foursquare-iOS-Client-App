//
//  VenueSearchRequest.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 26.01.2021.
//

import Foundation

struct VenueSearchRequest {
    let clientId: String
    let clientSecret: String
    let version: String
    let latitudeLongitude: [Double]
    let radius: Double
    let query: String
    let limit: Int
}

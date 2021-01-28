//
//  Photos.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import Foundation

struct Photos: Decodable {
    let count: Int
    let items: [Item]
}

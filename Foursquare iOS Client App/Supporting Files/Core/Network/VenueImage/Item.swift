//
//  Item.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import Foundation

struct Item: Decodable {
    let id: String
    let createdAt: Int
    let prefix: String
    let suffix: String
    let width: Int
    let height: Int
    let user: User
    let visibility: String
}

extension Item {
    var imageURL: URL? {
        URL(string: "\(prefix)/\(width)x\(height)/\(suffix)")
    }
}

//
//  BaseResponse.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 27.01.2021.
//

import Foundation

struct BaseResponse<T: Decodable>: Decodable {
    let meta: Meta
    let response: T
}

//
//  FoursquareAPI.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import Alamofire

final class FoursquareAPI {

    private static let clientId = "Your foursquare client id."
    private static let clientSecret = "Your foursquare client secret."
    private static var baseURL: URL {
        guard let url = URL(string: "https://api.foursquare.com/v2/venues") else { fatalError("Base URL not found.") }
        return url
    }
    
    static func searchVenue(query: String, completion: @escaping (VenueSearchResponse?, Error?) -> Void) {
        let parameters: [String : Any] = [
            "client_id" : clientId,
            "client_secret" : clientSecret,
            "v" : "20190425",
            "near": "istanbul",
            "query" : query,
            "limit" : 10
        ]
        
        AF.request(baseURL.appendingPathComponent("/search"), method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { response in
            if let error = response.error {
                completion(nil, error)
            }
            guard let data = response.data else { return }
            do {
                let baseResponse = try JSONDecoder().decode(BaseResponse<VenueSearchResponse>.self, from: data)
                completion(baseResponse.response, nil)
            } catch {
                fatalError(error.localizedDescription)
            }
        }
    }
}

//
//  LocationResponse.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/28/23.
//

import Foundation
struct LocationResponse: Codable {
    struct InfoLocation: Codable {
        var count: Int
        var pages: Int
        var next: String?
        var prev: String?
    }
    let info: InfoLocation
    let results: [Location]
}

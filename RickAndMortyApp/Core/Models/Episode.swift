//
//  Episode.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation
//struct ResultsEpisode: Codable {
//    var results: [Episode]
//}
struct Episode: Codable {
    var id: Int
    var name: String
    var air_date: String
    var episode: String
    var characters: [String]
    var url: String
    var created: String
}

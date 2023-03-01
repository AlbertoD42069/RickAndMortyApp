//
//  EpisodeResponse.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/28/23.
//

import Foundation

struct EpisodeResponse: Codable {
    struct InfoEpisode: Codable {
        var count: Int
        var pages: Int
        var next: String?
        var prev: String?
    }
    let info: InfoEpisode
    let results: [Episode]
}

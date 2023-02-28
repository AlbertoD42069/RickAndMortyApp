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
    var character: [String]
    var url: String
    var created: String
}
/*
 "results": [
     {
       "id": 1,
       "name": "Pilot",
       "air_date": "December 2, 2013",
       "episode": "S01E01",
       "characters": [
         "https://rickandmortyapi.com/api/character/1",
         "https://rickandmortyapi.com/api/character/2",
         //...
       ],
       "url": "https://rickandmortyapi.com/api/episode/1",
       "created": "2017-11-10T12:56:33.798Z"
     },
     // ...
   ]
 */

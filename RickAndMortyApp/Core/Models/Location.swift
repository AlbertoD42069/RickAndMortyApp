//
//  Location.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation
//struct ResultsLocation: Codable {
//    let results: [Location]
//}

struct Location: Codable {
    var id: Int
    var name: String
    var type: String
    var dimension: String
    var residents: [String]
    var url: String
    var created: String
    /*
     "results": [
         {
           "id": 1,
           "name": "Earth",
           "type": "Planet",
           "dimension": "Dimension C-137",
           "residents": [
             "https://rickandmortyapi.com/api/character/1",
             "https://rickandmortyapi.com/api/character/2",
             // ...
           ],
           "url": "https://rickandmortyapi.com/api/location/1",
           "created": "2017-11-10T12:42:04.162Z"
         }
         // ...
       ]
     */
}

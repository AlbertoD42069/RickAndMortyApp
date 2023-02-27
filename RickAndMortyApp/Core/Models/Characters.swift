//
//  Characters.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation



struct Results {
    var results: [Characters]
}
struct Characters: Codable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: [Origin]
    var location: [Location]
    var image: String
    var url: String
    var created: String
}
struct Origin: Codable {
    var name: String
    var url: String
}
struct Location: Codable {
    var name: String
    var url: String
}


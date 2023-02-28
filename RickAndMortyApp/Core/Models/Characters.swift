//
//  Characters.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation



//struct ResultsCharacters {
  //  var results: [Character]
//}
struct Character: Codable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: OriginCharacter
    var location: LocationCharacter
    var image: String
    var episode: [String]
    var url: String
    var created: String
}
struct OriginCharacter: Codable {
    var name: String
    var url: String
}
struct LocationCharacter: Codable {
    var name: String
    var url: String
}
enum StatusCharacter: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
enum genderCharacter: String, Codable {
    //('Female', 'Male', 'Genderless' or 'unknown').
    case famale = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}

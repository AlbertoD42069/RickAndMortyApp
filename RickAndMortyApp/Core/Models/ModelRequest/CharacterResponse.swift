//
//  CharacterResponse.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/28/23.
//

import Foundation

struct CharacterResponse: Codable {
    struct InfoCharacter: Codable {
        var count: Int
        var pages: Int
        var next: String?
        var prev: String?
    }
    let info: InfoCharacter
    let results: [Character]
}

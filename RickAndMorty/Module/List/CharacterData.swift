//
//  CharacterData.swift
//  RickAndMorty
//
//  Created by kamilcal on 12.02.2023.
//

import Foundation


// MARK: - Character
struct APIData: Codable {
    let results: [CharacterData]?
}

// MARK: - Result
struct CharacterData: Codable {
    let id: Int?
    let name, status, species, type: String?
    let gender: String?
    let origin, location: Location?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
}

// MARK: - Location
struct Location: Codable {
    let name: String?
    let url: String?
}

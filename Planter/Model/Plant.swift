//
//  Plant.swift
//  Planter
//
//  Created by Juan Guerrero on 4/28/23.
//

import Foundation

// MARK: - Plant
struct Plant: Codable {
    let data: [PlantData]
}

// MARK: - Datum
struct PlantData: Codable {
    let id: Int
    let common_name: String
    let scientific_name, other_name: [String]
    let cycle: String
    let watering: String
    let sunlight: [String]
    let default_image: ImageData
}

// MARK: - ImageData
struct ImageData: Codable {
    let license: Int
    let license_name: String
    let license_url: String
    let original_url: String
    let regular_url, medium_url, small_url, thumbnail: String?
}

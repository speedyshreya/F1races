//
//  F1ConstructorsData.swift
//  f1races
//
//  Created by Shreya Raj on 09/08/22.
//

import Foundation

struct F1ConstructorData: Codable {
    let mrDataConstructor: MRDataConstructor

    enum CodingKeys: String, CodingKey {
        case mrDataConstructor = "MRData"
    }
}

// MARK: - MRData
struct MRDataConstructor: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let constructorTable: ConstructorTable

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case constructorTable = "ConstructorTable"
    }
}

// MARK: - ConstructorTable
struct ConstructorTable: Codable {
    let season: String
    let constructors: [Constructor]

    enum CodingKeys: String, CodingKey {
        case season
        case constructors = "Constructors"
    }
}

// MARK: - Constructor
struct Constructor: Codable {
    let constructorID: String
    let url: String
    let name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

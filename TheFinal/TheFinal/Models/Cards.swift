//
//  Cards.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/23/23.
//

import Foundation

// MARK: - Welcome
struct AllCards: Codable {
    let data: [CardInfo]
    let page, pageSize, count, totalCount: Int
}

// MARK: - Datum
struct CardInfo: Codable, Identifiable {
    
    let id, name: String
    let datumSet: Set
    let number: String
    let images: DatumImages

    enum CodingKeys: String, CodingKey {
        case id, name
        case datumSet = "set"
        case number, images
    }
}


// MARK: - Set
struct Set: Codable {
    let id, name: String
    let printedTotal, total: Int
    let ptcgoCode: String?
    let releaseDate, updatedAt: String
}

// MARK: - DatumImages
struct DatumImages: Codable {
    let small, large: String
}


//
//  Sets.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/23/23.
//

import Foundation

// MARK: - Welcome
struct SetCore: Codable {
    let data: [DataSets]
    let page, pageSize, count, totalCount: Int
}

// MARK: - Datum
struct DataSets: Codable, Identifiable, Hashable {
    let id, name, series: String
    let printedTotal, total: Int
    let ptcgoCode: String?
    let releaseDate, updatedAt: String
    let images: Images
}

// MARK: - Images
struct Images: Codable, Hashable {
    let symbol, logo: String
}

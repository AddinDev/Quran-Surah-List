//
//  Surah.swift
//  Quran IDN API
//
//  Created by addjn on 18/08/20.
//  Copyright © 2020 pstw._. All rights reserved.
//

import Foundation

struct PurpleData: Codable {
    let data: [Surah]?
}

struct Surah: Codable, Identifiable {
    let id = UUID()
    let translationID, translationEn, asma: String?
    let numberOfAyahs: Int?
    let name: String?
    let number: Int?
    let typeID: String?
    let typeEn: String?
    let orderNumber: Int?

    enum CodingKeys: String, CodingKey {
        case translationID = "translationId"
        case translationEn, asma, numberOfAyahs, name, number
        case typeID = "typeId"
        case typeEn, orderNumber
    }
}

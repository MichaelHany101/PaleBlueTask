//
//  PhotosModel.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 26/10/2024.
//

import Foundation

class PhotosModel: Codable {
    let total: Int?
    let totalHits: Int?
    let hits: [HitModel]

    init(total: Int, totalHits: Int, hits: [HitModel]) {
        self.total = total
        self.totalHits = totalHits
        self.hits = hits
    }
}

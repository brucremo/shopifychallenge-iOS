//
//  Collect.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-17.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import Foundation

class Collect : Decodable{
    let collects: [CollectElement]
    
    init(collects: [CollectElement]) {
        self.collects = collects
    }
}

class CollectElement : Decodable{
    let id, collectionID, productID: Int
    let featured: Bool
    let createdAt, updatedAt: Date
    let position: Int
    let sortValue: String
    
    init(id: Int, collectionID: Int, productID: Int, featured: Bool, createdAt: Date, updatedAt: Date, position: Int, sortValue: String) {
        self.id = id
        self.collectionID = collectionID
        self.productID = productID
        self.featured = featured
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.position = position
        self.sortValue = sortValue
    }
}

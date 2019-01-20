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
    let id, collection_id, product_id: Int
    let featured: Bool
    let created_at, updated_at: Date
    let position: Int
    let sort_value: String
    
    init(id: Int, collection_id: Int, product_id: Int, featured: Bool, created_at: Date, updated_at: Date, position: Int, sort_value: String) {
        self.id = id
        self.collection_id = collection_id
        self.product_id = product_id
        self.featured = featured
        self.created_at = created_at
        self.updated_at = updated_at
        self.position = position
        self.sort_value = sort_value
    }
}

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
}

class CollectElement : Decodable{
    let id, collection_id, product_id: Int
    let featured: Bool
    let created_at, updated_at: Date
    let position: Int
    let sort_value: String
}

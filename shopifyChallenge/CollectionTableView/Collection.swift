//
//  Collection.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-17.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import Foundation

class CustomCollections : Decodable{
    let custom_collections: Array<CustomCollection>
}

class CustomCollection : Decodable {
    let id: Int
    let handle, title: String
    let updated_at: Date
    let body_html: String
    let published_at: Date
    let sort_order: String
    let template_suffix: String
    let published_scope: String
    let admin_graphql_api_id: String
    let image: Image
}

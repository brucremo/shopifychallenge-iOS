//
//  Collection.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-17.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import Foundation

class CustomCollections : Decodable{
    let custom_collections: [CustomCollection]
    
    init(custom_collections: [CustomCollection]) {
        self.custom_collections = custom_collections
    }
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
    
    init(id: Int, handle: String, title: String, updated_at: Date, body_html: String, published_at: Date, sort_order: String, template_suffix: String, published_scope: String, admin_graphql_api_id: String, image: Image) {
        self.id = id
        self.handle = handle
        self.title = title
        self.updated_at = updated_at
        self.body_html = body_html
        self.published_at = updated_at
        self.sort_order = sort_order
        self.template_suffix = template_suffix
        self.published_scope = published_scope
        self.admin_graphql_api_id = admin_graphql_api_id
        self.image = image
    }
}

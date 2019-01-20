//
//  Product.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-19.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import Foundation

class Product : Decodable {
    let products: [ProductElement]
}

class ProductElement : Decodable {
    let id: Int
    let title, body_html, vendor, product_type: String
    let created_at: Date
    let handle: String
    let updated_at, published_at: Date
    let template_suffix: String?
    let tags, published_scope, admin_graphql_api_id: String
    let variants: [Variant]
    let options: [Option]
    let images: [Image]
    let image: Image
    var total_inventory: Int?
}

class Image : Decodable {
    let id, product_id, position: Int?
    let created_at, updated_at: Date?
    let alt: String?
    let width, height: Int?
    let src: String?
    let variant_ids: [Int]?
    let admin_graphql_api_id: String?
}

class Option : Decodable {
    let id, product_id: Int
    let name: String
    let position: Int
    let values: [String]
}

class Variant : Decodable {
    let id, product_id: Int
    let title, price, sku: String
    let position: Int
    let inventory_policy: String?
    let compare_at_price: Double?
    let fulfillment_service: String?
    let inventory_management: String?
    let option1, option2, option3: String?
    let created_at, updated_at: Date
    let taxable: Bool
    let barcode: String?
    let grams: Int
    let image_id: Int?
    let weight: Double
    let weight_unit: String
    let inventory_item_id, inventory_quantity, old_inventory_quantity: Int
    let requires_shipping: Bool
    let admin_graphql_api_id: String
}

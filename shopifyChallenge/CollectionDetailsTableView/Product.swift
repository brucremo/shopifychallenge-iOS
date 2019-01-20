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
    
    init(products: [ProductElement]) {
        self.products = products
    }
}

class ProductElement : Decodable {
    let id: Int
    let title, body_html, vendor, product_type: String
    let created_at: Date
    let handle: String
    let updated_at, published_at: Date
    let template_suffix: String
    let tags, published_scope, admin_graphql_api_id: String
    let variants: [Variant]
    let options: [Option]
    let images: [Image]
    let image: Image
    
    init(id: Int, title: String, body_html: String, vendor: String, product_type: String, created_at: Date, handle: String, updated_at: Date, published_at: Date, template_suffix: String, tags: String, published_scope: String, admin_graphql_api_id: String, variants: [Variant], options: [Option], images: [Image], image: Image) {
        self.id = id
        self.title = title
        self.body_html = body_html
        self.vendor = vendor
        self.product_type = product_type
        self.created_at = created_at
        self.handle = handle
        self.updated_at = updated_at
        self.published_at = published_at
        self.template_suffix = template_suffix
        self.tags = tags
        self.published_scope = published_scope
        self.admin_graphql_api_id = admin_graphql_api_id
        self.variants = variants
        self.options = options
        self.images = images
        self.image = image
    }
}

class Image : Decodable {
    let id, product_id, position: Int?
    let created_at, updated_at: Date?
    let alt: String?
    let width, height: Int?
    let src: String?
    let variant_ids: [Int]?
    let admin_graphql_api_id: String?
    
    init(id: Int, product_id: Int, position: Int, created_at: Date, updated_at: Date, alt: String, width: Int, height: Int, src: String, variant_ids: [Int], admin_graphql_api_id: String) {
        self.id = id
        self.product_id = product_id
        self.position = position
        self.created_at = created_at
        self.updated_at = updated_at
        self.alt = alt
        self.width = width
        self.height = height
        self.src = src
        self.variant_ids = variant_ids
        self.admin_graphql_api_id = admin_graphql_api_id
    }
}

class Option : Decodable {
    let id, product_id: Int
    let name: String
    let position: Int
    let values: [String]
    
    init(id: Int, product_id: Int, name: String, position: Int, values: [String]) {
        self.id = id
        self.product_id = product_id
        self.name = name
        self.position = position
        self.values = values
    }
}

class Variant : Decodable {
    let id, product_id: Int
    let title, price, sku: String
    let position: Int
    let inventory_policy: String
    let compare_at_price: Double
    let fulfillment_service: String
    let inventory_management: String
    let option1, option2, option3: String
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
    
    init(id: Int, product_id: Int, title: String, price: String, sku: String, position: Int, inventory_policy: String, compare_at_price: Double, fulfillment_service: String, inventory_management: String, option1: String, option2: String, option3: String, created_at: Date, updated_at: Date, taxable: Bool, barcode: String, grams: Int, image_id: Int, weight: Double, weight_unit: String, inventory_item_id: Int, inventory_quantity: Int, old_inventory_quantity: Int, requires_shipping: Bool, admin_graphql_api_id: String) {
        self.id = id
        self.product_id = product_id
        self.title = title
        self.price = price
        self.sku = sku
        self.position = position
        self.inventory_policy = inventory_policy
        self.compare_at_price = compare_at_price
        self.fulfillment_service = fulfillment_service
        self.inventory_management = inventory_management
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.created_at = created_at
        self.updated_at = updated_at
        self.taxable = taxable
        self.barcode = barcode
        self.grams = grams
        self.image_id = image_id
        self.weight = weight
        self.weight_unit = weight_unit
        self.inventory_item_id = inventory_item_id
        self.inventory_quantity = inventory_quantity
        self.old_inventory_quantity = old_inventory_quantity
        self.requires_shipping = requires_shipping
        self.admin_graphql_api_id = admin_graphql_api_id
    }
}

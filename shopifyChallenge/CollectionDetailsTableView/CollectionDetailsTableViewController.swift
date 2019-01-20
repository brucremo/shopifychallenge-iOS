//
//  CollectionDetailsTableViewController.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-19.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireMapper

class CollectionDetailsTableViewController: UITableViewController {
    
    var collectionID : Int?
    var collectionTitle : String?
    private var collect : Collect?
    private var product : Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.rowHeight = 90.0;
        
        let collectRequest = String("https://shopicruit.myshopify.com/admin/collects.json?collection_id=\(collectionID!)&page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6")

        //Retrieve custom_collections from the API and set self.customCollections to the response value
        Alamofire.request(collectRequest).responseObject { (response: DataResponse<Collect>) in
            
            self.collect = response.result.value
            
            var queryIds = ""
            
            for collId in (self.collect?.collects)! {
                
                queryIds += "\(collId.product_id),"
            }
            
            let productRequest = String("https://shopicruit.myshopify.com/admin/products.json?ids=\(queryIds)&page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6")
            
            Alamofire.request(productRequest).responseObject { (response: DataResponse<Product>) in
                
                self.product = response.result.value
                
                for product in ((self.product?.products)!){
                    
                    var totalInventory = 0
                    
                    for variant in product.variants {
                        
                        totalInventory += variant.inventory_quantity
                    }
                    
                    product.total_inventory = totalInventory
                }
                
                self.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.product?.products.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? CollectionDetailTableViewCell else{
            
            fatalError("Dequeue error")
        }
        
        cell.productNameLabel.text = self.product?.products[indexPath.row].title
        cell.collectionTitleLabel.text = self.collectionTitle
        cell.thumbnailImage.load(url: URL(string: (self.product?.products[indexPath.row].image.src)!)!)
        
        let totalInventory = self.product?.products[indexPath.row].total_inventory ?? 0
        
        cell.inventoryLabel.text = "\(totalInventory) on inventory"
        
        return cell
    }
}

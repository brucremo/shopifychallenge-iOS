//
//  ViewController.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-17.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireMapper

class CollectionsTableViewController: UITableViewController {
    
    // MARK: - Instance Variables
    
    private var customCollections : CustomCollections?

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Collections"
        self.tableView?.rowHeight = 90.0;
        
        //Retrieve custom_collections from the API and set self.customCollections to the response value
        Alamofire.request("https://shopicruit.myshopify.com/admin/custom_collections.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6").responseObject { (response: DataResponse<CustomCollections>) in
            
            self.customCollections = response.result.value
            
            //Reload table data to display the newly loaded information
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table View Vethods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.customCollections?.custom_collections.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CollectionTableViewCell else {
            
            fatalError("Dequeue error")
        }
        
        //Configuring the cell
        cell.collectionTitle.text = self.customCollections?.custom_collections[indexPath.row].title
        cell.collectionThumbnail.load(url: URL(string: (self.customCollections?.custom_collections[indexPath.row].image.src)!)!)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toCollectionDetails" {
            
            let viewController = segue.destination as! CollectionDetailsTableViewController
            
            let indexPath = tableView.indexPath(for: sender as! UITableViewCell)
            let selectedData = self.customCollections?.custom_collections
            
            viewController.title = selectedData![(indexPath?.row)!].title
            viewController.collectionID = selectedData![(indexPath?.row)!].id
            viewController.collectionTitle = selectedData![(indexPath?.row)!].title
        }
    }
}

// MARK: - Extensions

/* From: https://www.hackingwithswift.com/example-code/uikit/how-to-load-a-remote-image-url-into-uiimageview
   By Paul Hudson, Feb 14th, 2018 */
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

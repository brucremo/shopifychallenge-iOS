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

class ViewController: UITableViewController {
    
    var customCollections : CustomCollections?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Retrieve custom_collections from the API and set self.customCollections to the response value
        Alamofire.request("https://shopicruit.myshopify.com/admin/custom_collections.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6").responseObject { (response: DataResponse<CustomCollections>) in
            
            self.customCollections = response.result.value
        }
    
    }
}


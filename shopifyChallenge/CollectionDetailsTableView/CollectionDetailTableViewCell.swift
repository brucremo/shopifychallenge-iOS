//
//  CollectionDetailTableViewCell.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-19.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import UIKit

class CollectionDetailTableViewCell: UITableViewCell {

    // MARK: - Instance Variables
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var inventoryLabel: UILabel!
    @IBOutlet weak var collectionTitleLabel: UILabel!
    @IBOutlet weak var productThumbnail: UIImageView!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Cell customization - productThumbnail
        productThumbnail.layer.shadowOpacity = 1
        productThumbnail.layer.shadowRadius = 2
        productThumbnail.layer.shadowOffset = CGSize(width: 3, height: 3)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  CollectionTableViewCell.swift
//  shopifyChallenge
//
//  Created by Bruno Alexander Cremonese de Morais on 2019-01-19.
//  Copyright © 2019 Bruno Alexander Cremonese de Morais. All rights reserved.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    // MARK: - Instance Variables
    
    @IBOutlet var cellContentView: UIView!
    @IBOutlet weak var collectionTitle: UILabel!
    @IBOutlet weak var collectionThumbnail: UIImageView!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Cell customization - collectionThumbnail
        collectionThumbnail.layer.shadowOpacity = 1
        collectionThumbnail.layer.shadowRadius = 2
        collectionThumbnail.layer.shadowOffset = CGSize(width: 3, height: 3)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

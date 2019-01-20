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
    
    @IBOutlet weak var collectionTitle: UILabel!
    @IBOutlet weak var collectionThumbnail: UIImageView!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  CollectionViewCell.swift
//  Offers
//
//  Created by deepo on 12/1/20.
//  Copyright © 2020 deepo. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageproduct:UIImageView!
    @IBOutlet weak var descripelabel:UILabel!
    @IBOutlet weak var pricelabel:UILabel!
    
    
    
    func updateView(product:products)
    {
        imageproduct.image = UIImage(named: product.imageproduct)
        descripelabel.text = product.decription
        pricelabel.text = product.title
        
    }
}

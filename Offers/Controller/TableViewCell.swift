//
//  TableViewCell.swift
//  Offers
//
//  Created by deepo on 11/29/20.
//  Copyright © 2020 deepo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catLabel:UILabel!

  func updateview(categroy : category)
   {
    catImage.image = UIImage(named: categroy.image)
    catLabel.text = categroy.title
    
   }

}

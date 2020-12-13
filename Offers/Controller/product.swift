//
//  product.swift
//  Offers
//
//  Created by deepo on 12/2/20.
//  Copyright © 2020 deepo. All rights reserved.
//

import UIKit

class product: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collect: UICollectionView!
             var name : String = ""
          public var element = [products]()
         
     
          
    override func viewDidLoad() {
        super.viewDidLoad()
      
        element = dataServies.instance.getcatproduct(forCategory:name)

        // Do any additional setup after loading the view.
    }
    
  
       
        
            

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return element.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell
           let prod = element[indexPath.row]
            cell.updateView(product: prod)
            return cell
            
        }
        

        
        
        
    }


extension product : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2, height:300)
    }
}


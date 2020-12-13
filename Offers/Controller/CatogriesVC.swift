//
//  ViewController.swift
//  Offers
//
//  Created by deepo on 11/29/20.
//  Copyright © 2020 deepo. All rights reserved.
//

import UIKit

class CatogriesVC : UIViewController {

    @IBOutlet weak var Table: UITableView!
    var another : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Table.dataSource = self
        Table.delegate = self
        // Do any additional setup after loading the view.
    }

}
extension CatogriesVC : UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataServies.instance.getcategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let categroy = dataServies.instance.getcategory()[indexPath.row]
            cell.updateview(categroy: categroy)
        return cell
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let category = dataServies.instance.getcategory()[indexPath.row]
        another = category.title
      performSegue(withIdentifier: "productVC", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let productVC = segue.destination as? product
     
        productVC?.name = another


    }


    
    
    
}


//
//  DataServices.swift
//  Offers
//
//  Created by deepo on 11/30/20.
//  Copyright © 2020 deepo. All rights reserved.
//

import Foundation
class dataServies {
    static var instance = dataServies()
    
    private let categries = [category(title: "Shirts", image:"shirts.png" ),category(title: "HOODIES", image:"hoodies.png" ),category(title: "HATS", image:"hats.png" ),category(title: "DIGITAL", image:"digital.png" )]
    
    private let HATS = [products(imageproduct: "hat01.png", title: "$15", decription: "balck hat"),
                        products(imageproduct: "hat02.png", title: "$10", decription: "red hat"),
                        products(imageproduct: "hat03.png", title: "$2", decription: "hamada hat"),
                        products(imageproduct: "hat04.png", title: "$3", decription: "mayada hat"),
    ]
    private let HOODIES = [products(imageproduct: "hoodie01.png", title: "$15", decription: "beauty"),
                           products(imageproduct: "hoodie02.png", title: "$10", decription: "good"),
                           products(imageproduct: "hoodie03.png", title: "$2", decription: "EX"),
                           products(imageproduct: "hoodie04.png", title: "$3", decription: "mayada "),
       ]
    private let Shirts = [products(imageproduct: "shirt01.png", title: "$15", decription: "balck "),
                           products(imageproduct: "shirt02.png", title: "$10", decription: "redt"),
                           products(imageproduct: "shirt02.png", title: "$2", decription: "white"),
                           products(imageproduct: "shirt04.png", title: "$3", decription: "blue"),
       ]
    private let DIGITAL = [products]()
    
    public func getcategory() ->[category]
    {
        return categries
    }
    public func getcatproduct(forCategory : String) -> [products]
    {
        switch forCategory {
        case "HATS":
            return gethats()
            case "HOODIES":
            return gethoodies()
            case "Shirts":
            return getshirts()
            case "DIGITAL":
            return getdigital()
        default:
            
                print("hhhhhhhhhhhhhhhghgghhhhhhhhhhhhhh")
            return gethats()
            
                
        }
    }
        
    func gethats() ->[products]
    {
        return HATS
    }
        func  gethoodies() ->[products]
        {
            return HOODIES
        }
        func  getshirts() ->[products]
        {
            return Shirts
        }
        func getdigital() ->[products]
        {
            return DIGITAL
    
    
    }
}


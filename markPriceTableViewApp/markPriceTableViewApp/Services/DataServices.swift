//
//  DataServices.swift
//  markPriceTableViewApp
//
//  Created by iOS developer on 6/13/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let catagories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCatagories() -> [Category] {
        return catagories
        
    }
    
    
    
}

//
//  TableViewCell.swift
//  markPriceTableViewApp
//
//  Created by iOS developer on 6/13/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var catagoryImage : UIImageView!
    @IBOutlet weak var catagoryTitle : UILabel!
    
    func updateViews(catagory : Category) {
        catagoryImage.image = UIImage(named: catagory.imageName)
        catagoryTitle.text = catagory.title
    }
    
    
    
    

}

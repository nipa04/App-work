//
//  TableViewCell.swift
//  tableViewApp3
//
//  Created by iOS developer on 6/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var myImageView: UIImageView!

    @IBOutlet weak var label: UILabel!
    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}





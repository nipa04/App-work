//
//  ViewController.swift
//  examApp
//
//  Created by Admin on 2018-04-15.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet var colorButtonsCollection: [UIButton]!
    
    var colorChoices = [ #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1) ,#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1) ]
    
    var colorLabelChoices = ["Red", "Blue", "Green" ,"Yellow"]
    
    @IBAction func colorButtons(_ sender: UIButton)
    {
        if let colorNumber = colorButtonsCollection.index(of: sender)
        {
            changeBackgroundColor(withColor: colorChoices[colorNumber] , on: sender)
            colorLabel.text = colorLabelChoices [colorNumber]
            
        }
    }

    func changeBackgroundColor(withColor color : UIColor ,on button: UIButton ) {
        if button.currentTitleColor == color
        {
            button.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControlState.normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        else {
            button.setTitleColor(color, for: UIControlState.normal)
            view.backgroundColor = color
        }
}
}

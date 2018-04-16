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
    
    
    @IBAction func redButton(_ sender: UIButton)
    {
        changeBackgroundColor(withColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1) , on: sender)
        colorLabel.text = "RED"
    }
    
    @IBAction func blueButton(_ sender: UIButton)
    {
        changeBackgroundColor(withColor: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), on: sender)
            colorLabel.text = "Blue"
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
         changeBackgroundColor(withColor: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), on: sender)
            colorLabel.text = "Green"
        
    }
    
    @IBAction func yellowButton(_ sender: UIButton) {
         changeBackgroundColor(withColor: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1), on: sender)
        colorLabel.text = "Yellow"
        
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

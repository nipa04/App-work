//
//  ViewController.swift
//  ColourMapper
//
//  Created by Admin on 2018-04-09.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var blueView: UIView!

    @IBOutlet weak var yellowView: UIView!
    
    
    @IBAction func colourMapped(_ sender: UIButton) {
        if view == redView {
            Colour.text = "Colour :RED"
            UIView.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)

        }
        
        
      
    }
    
    
}


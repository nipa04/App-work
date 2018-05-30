//
//  ViewController.swift
//  sliderApp2
//
//  Created by iOS developer on 5/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func text(_ sender: UITextField) {
        
    }
    
    @IBOutlet weak var textLabel: UITextField!
    
    @IBAction func sliderButton(_ sender: UISlider) {
    
        textLabel.text = String(Int(sender.value))
        
    }
    
}


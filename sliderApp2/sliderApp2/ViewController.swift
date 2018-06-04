//
//  ViewController.swift
//  sliderApp2
//
//  Created by iOS developer on 5/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func sliderButton(_ sender: UISlider) {

        let colorValue = UIColor(red: 0, green: 0, blue: 0, alpha: CGFloat(sender.value))

        textLabel.textColor = colorValue
        
//        let colorValue = UIColor(hue: 0.0 , saturation: CGFloat(Int(1)) , brightness: CGFloat(Int(sender.value))            , alpha: CGFloat(Int(sender.value)))
//         textLabel.textColor = colorValue

    }
        
    
}


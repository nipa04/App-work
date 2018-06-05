//
//  ViewController.swift
//  testingApp
//
//  Created by iOS developer on 6/5/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func slider(_ sender: UISlider) {
        let colorValue = sender.value
        let color = UIColor(hue: CGFloat(colorValue), saturation: 1, brightness: 1, alpha: 1)
        view.backgroundColor = color
        
    }
    

}


//
//  ViewController.swift
//  sliderAPP
//
//  Created by iOS developer on 5/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Array = [#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"), #imageLiteral(resourceName: "img3")]
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var sliderLabel: UISlider!
    
    @IBAction func sliderButton(_ sender: UISlider) {
        let value = Int(sender.value)
        imageView.image = Array[value]
    }
    
    @IBAction func prevButton(_ sender: UIButton) {
        sliderLabel.value -= 1
        imageView.image = Array[Int(sliderLabel.value)]
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        sliderLabel.value += 1
        imageView.image = Array[Int(sliderLabel.value)]
    }
}


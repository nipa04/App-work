//
//  ViewController.swift
//  MyApp1
//
//  Created by Admin on 2018-05-28.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func resetButton(_ sender: UIButton) {
        count = 0
        counterLabel.text = "\(count)"
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        count += 1
        counterLabel.text = "\(count)"
    }
}


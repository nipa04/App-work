//
//  ViewController.swift
//  timerAPP
//
//  Created by iOS developer on 5/29/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var timer = Timer()
    var countingIsOn = false
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func tapButton(_ sender: UIButton) {
      
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
       
        if countingIsOn == false {
            countingIsOn = true
        }
        else if countingIsOn == true {
            timer.invalidate()
            countingIsOn = false
        }
        
    }
    
    @objc func counter() {
        count += 1
        counterLabel.text = "\(count)"
    }
    
    @IBAction func resetButton(_ sender: UIButton) {

        count = 0
        counterLabel.text = "\(count)"
 
   
    }

}


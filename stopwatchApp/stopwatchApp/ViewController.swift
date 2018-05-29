//
//  ViewController.swift
//  stopwatchApp
//
//  Created by iOS developer on 5/29/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var time = 0
    var timer = Timer()
    
    @IBOutlet weak var timerLabel: UILabel!
    

    @IBAction func startButton(_ sender: UIButton) {
  
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(action), userInfo: nil, repeats: true)
        
    }
    
    @objc func action() {
        time += 1
        timerLabel.text = "\(time)"
    }
    
    @IBAction func pauseButon(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        timer.invalidate()
        time = 0
        timerLabel.text =  "\(time)"
    }
}


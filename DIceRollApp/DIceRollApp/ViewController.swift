
//  ViewController.swift
//  DIceRollApp
//
//  Created by Admin on 2018-04-25.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let firstNumber = arc4random_uniform(6) + 1

        let secondNumber = arc4random_uniform(6) + 1
     
        label.text = "The sum is: \(firstNumber + secondNumber)"
        leftImageView.image = UIImage(named: "Dice\(firstNumber)")
        rightImageView.image = UIImage(named: "Dice\(secondNumber)")
        
    }
    
}


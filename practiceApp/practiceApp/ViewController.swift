//
//  ViewController.swift
//  practiceApp
//
//  Created by Admin on 2018-04-03.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize the numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
     
      //change the image views
        leftImageView.image = UIImage (named: "card\(leftRandomNumber)")

        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the random numbers
        if leftRandomNumber > rightRandomNumber {
            //update the scores
            leftScore += 1
            
            //update the label
            leftScoreLabel.text = String(leftScore)
            
        }
        else if rightRandomNumber > leftRandomNumber {
            //update the scores
            rightScore += 1
            
            //update the label
            rightScoreLabel.text = String(rightScore)
            
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }

    
    }
}
    



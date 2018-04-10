//
//  ViewController.swift
//  standfordUniApp
//
//  Created by Admin on 2018-04-09.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["👻", "🎃", "👻" ,"🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNUmber = cardButtons.index(of: sender){
        flipCard(withEmoji: emojiChoices[cardNUmber], on: sender)
        }
        else {
            print ("chosen card was not in the cardbutton")
        }
    }
    
    func flipCard(withEmoji emoji : String, on button : UIButton) {
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji , for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}


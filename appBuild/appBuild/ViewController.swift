//
//  ViewController.swift
//  appBuild
//
//  Created by Admin on 2018-04-12.
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
    
    
    @IBOutlet var redButtonCollections: [UIButton]!
    var textChoices = ["💛","💙","💜","💚"]
    
    @IBAction func redButton(_ sender: UIButton) {
        flipCount += 1
        if let buttonNumber = redButtonCollections.index(of: sender)
        {
            flipButtonView(withText: textChoices[buttonNumber] , on: sender)        }
        else {
            print("Chosen card is not in the array")
        }
        
    
        
        //view.backgroundColor = sender.backgroundColor
        //flipButton(withColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), on: sender)
        
    }
    
//
//    func flipButton(withColor color: UIColor, on button : UIButton)
//    {
//        if button.currentTitleColor == color {
//            button.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: UIControlState.normal)
//            view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        }
//        else {
//            button.setTitleColor( color, for: UIControlState.normal)
//            view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
//            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
//        }
    
//}



    func flipButtonView(withText text : String ,on button : UIButton){
        if button.currentTitle == text {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        }
        else{
            button.setTitle(text, for: UIControlState.normal)
        button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
           view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
    }
    

}


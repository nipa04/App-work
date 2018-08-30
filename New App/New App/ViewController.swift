//
//  ViewController.swift
//  New App
//
//  Created by iOS developer on 8/29/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question: UITextField!

    @IBOutlet weak var answerOne: UITextField!
    
    @IBOutlet weak var answerTwo: UITextField!
    
    @IBOutlet weak var answerThree: UITextField!
    
    @IBOutlet weak var answerFour: UITextField!
    
    
    @IBAction func submit(_ sender: Any) {
    
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.textFieldTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)

        
    }
    
    @objc func textFieldTapped(gestureRecognizer : UITapGestureRecognizer){
        
    }
   

}


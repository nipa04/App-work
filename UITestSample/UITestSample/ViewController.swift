//
//  ViewController.swift
//  UITestSample
//
//  Created by iOS developer on 7/11/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkButton: UIButton!
    @IBOutlet weak var ornageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pinkButton.accessibilityIdentifier     = "ViewController_pinkButton"
        self.ornageButton.accessibilityIdentifier   = "ViewController_ornageButton"
    }
}


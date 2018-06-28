//
//  ColorPickerVC.swift
//  ColorMagicApp
//
//  Created by iOS developer on 6/28/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func colorBtnWasPressed(sender: UIButton) {
        print (sender.titleLabel?.text!)
    }

}

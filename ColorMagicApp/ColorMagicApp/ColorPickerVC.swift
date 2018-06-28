//
//  ColorPickerVC.swift
//  ColorMagicApp
//
//  Created by iOS developer on 6/28/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate : ColorTranferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorBtnWasPressed(sender: UIButton) {
        if delegate != nil {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName:(sender.titleLabel?.text!)!)
        self.navigationController?.popViewController(animated: true)
        }
    }
}

//
//  colorPickerVC.swift
//  code-swag2
//
//  Created by iOS developer on 7/5/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class colorPickerVC: UIViewController {
    
    var delegate : colorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func colorButtonWasPressed(sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName:(sender.titleLabel?.text!)!)
            self.navigationController?.popViewController(animated: true)
        }
    
    }
  
}

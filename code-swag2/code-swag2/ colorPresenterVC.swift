//
//  ViewController.swift
//  code-swag2
//
//  Created by iOS developer on 7/5/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class colorPresenterVC : UIViewController,colorTransferDelegate {
   

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorTransferDelegate" {
            guard let colorPickerVC = segue.destination as? colorPickerVC else {return}
            colorPickerVC.delegate = self
        }
}

}

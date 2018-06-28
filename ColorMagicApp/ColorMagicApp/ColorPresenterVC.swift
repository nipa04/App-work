//
//  ViewController.swift
//  ColorMagicApp
//
//  Created by iOS developer on 6/28/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController,ColorTranferDelegate {
    
    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else {return}
            colorPickerVC.delegate = self
        }
    }
}


//
//  ViewController.swift
//  tapgestureApp
//
//  Created by iOS developer on 6/6/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapfunc))
        imageView.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapfunc () {
        if imageView.image == UIImage(named: "image1")
        {
            imageView.image = UIImage(named: "image2")
        }
        else {
            imageView.image = UIImage(named: "image1")
        }
    }
}


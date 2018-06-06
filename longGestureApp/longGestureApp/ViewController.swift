//
//  ViewController.swift
//  longGestureApp
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
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longPressGesture))
        imageView.addGestureRecognizer(longGesture)
        
    }
    @objc func longPressGesture() {
        if imageView.image == UIImage(named: "image1") {
            imageView.image = UIImage(named: "image2")
            
        }
        else if imageView.image == UIImage(named : "image2") {
            imageView.image = UIImage(named: "image3")
            
        }
        else {
            imageView.image = UIImage(named : "image1")
        }
        
    }

}


//
//  ColorTranferDelegate.swift
//  ColorMagicApp
//
//  Created by iOS developer on 6/28/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTranferDelegate {
    func userDidChoose(color : UIColor , withName colorName : String)
}

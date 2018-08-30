//
//  SurveyCell.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class SurveyCell: UITableViewCell {
    
    @IBOutlet weak var questionTextField : UITextField!
    @IBOutlet weak var answerOneTextField : UITextField!
    @IBOutlet weak var answerTwoTextField : UITextField!
    @IBOutlet weak var answerThreeTextField : UITextField!
    @IBOutlet weak var answerFourTextField : UITextField!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

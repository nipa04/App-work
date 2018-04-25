//
//  CardCollectionViewCell.swift
//  matchAPP
//
//  Created by Admin on 2018-04-19.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    
    var card:Card?

    func setCard(_ card:Card){
        
        //Keep track of the card that gets passed in
        self.card = card
        
        if card.ismatched == true {
            
            //if the card has been matched ,then make the image view invisible
            
            backImageView.alpha = 0
            frontImageView.alpha = 0
            
            return
        }
            // if the card has not been matched ,then make the image view  visible
        else {
            backImageView.alpha = 1
            frontImageView.alpha = 1
        }
        
        frontImageView.image = UIImage(named: card.imageName)
        
        //Determine if the card is in a flipped up state or flipped down state
        if card.isFlipped == true {
            
            //Make sure the frontImageView is on top
            UIView.transition(from: backImageView, to: frontImageView, duration: 0 , options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else {
            //Make sure the backImageView is on top
            UIView.transition(from: frontImageView, to: backImageView, duration: 0, options: [.showHideTransitionViews,.transitionFlipFromLeft], completion: nil)
        }
    }
    
    func flip() {
        UIView.transition(from:backImageView, to: frontImageView, duration: 0.3, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil )
    }
    func flipBack(){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            UIView.transition(from: self.frontImageView, to: self.backImageView, duration: 0.3, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
            
        }
        
       
    }
    func remove() {
        //Removes both imageviews from being visible
            backImageView.alpha = 0
        
        // TODO : Animate it
        UIView.animate(withDuration: 0.3, delay: 0.5, options: .curveEaseInOut, animations: {
            self.frontImageView.alpha = 0
        }, completion: nil)
        
    
    }
}


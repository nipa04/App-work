//
//  ViewController.swift
//  matchAPP
//
//  Created by Admin on 2018-04-13.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    var model = CardModel()
    var cardArray = [Card]()
    
    var firstFlippedCardIndex: IndexPath?
    
    var timer:Timer?
    var milliseconds: Float = 10 * 1000 // 10 seconds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // call the fetCards method of the card model
        cardArray = model.getCards()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //Create timer
        timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(timerElased), userInfo: nil, repeats: true)
        RunLoop.main.add(timer!,forMode :.commonModes)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    //MARK: -Timer Methods
    
    @objc func timerElased() {
        
        milliseconds -= 1
        
        //converts to seconds
        let seconds = String (format : "%.2f" , milliseconds / 1000)
        
        //Set label
        timerLabel.text = "Time Remaining: \(seconds)"
        
        //when the timer has reached 0...
        if milliseconds <= 0 {
            
            //Stop the timer
            timer?.invalidate()
            timerLabel.textColor = UIColor.red
            
            // Check if there are any cards unmatched
            checkGameEnded()
        }
        
    }
    
     //MARK: -UICollectionView Protocol Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cardArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Get an CardCollectionViewCell object
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
        
        //Get the card that the collection view is trying to display
        let card = cardArray[indexPath.row]
        
        // Set the card for the cell
        cell.setCard(card)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //Check there's any time left
        if milliseconds <= 0 {
            return
        }
        
        let cell = collectionView.cellForItem(at: indexPath) as! CardCollectionViewCell
        
        //Get the crad that the user selected
        let card = cardArray[indexPath.row ]
        
        if card.isFlipped == false  && card.ismatched == false {
            
            //Flip the card
            cell.flip()
            
            //Status of the card
            card.isFlipped = true
            
            //Determine if its the first card or second card thats flipped over
            
            if firstFlippedCardIndex == nil {
                
                //this is the first card being flipped
                firstFlippedCardIndex = indexPath
            }
        
        else {
           
            //this is the second card being flipped
            
            //Perform the matching logic
                checkForMAtches(indexPath)
        }
            }
        
    } //End the didSelectItemAT method
    
    // MARK : -Game Logic Methods
    
    func checkForMAtches(_ secondFlippedCardIndex:IndexPath){
        
        //Get the cells for the two cards that were revealed
        let cardOneCell = collectionView.cellForItem(at: firstFlippedCardIndex!) as? CardCollectionViewCell
        
        let cardTwoCell = collectionView.cellForItem(at: secondFlippedCardIndex)as? CardCollectionViewCell
        
        //Get the cards for the two cards that were revealed
        let cardOne = cardArray[firstFlippedCardIndex!.row]
        let cardTwo = cardArray[secondFlippedCardIndex.row]
    
        //Compare the two cards
        if cardOne.imageName == cardTwo.imageName {
            //its a match
            
            //Set the Status of the cards
            cardOne.ismatched = true
            cardTwo.ismatched = true
            
            //Remove the cards from the grid
            cardOneCell?.remove()
            cardTwoCell?.remove()
            
            //Check if there are any cards left unmatched
            checkGameEnded()
        }
        else {
            //Its not a match
            //Set the status of the grid
            cardOne.isFlipped = false
            cardTwo.isFlipped = false
            
            //Flip both the cards back
            cardOneCell?.flipBack()
            cardTwoCell?.flipBack()
        }
        //tell the collectionView to reload the cell of the first catd if its is nil
        if cardOneCell == nil {
            collectionView.reloadItems(at: [firstFlippedCardIndex!])
        }
        
        //Reset the property that tracks the first card flipped
        firstFlippedCardIndex = nil
    }
    func checkGameEnded() {
        //Determine if there are any cards unmatched
        
        var isWon = true
        for card in cardArray {
            
            if card.ismatched == false {
                isWon = false
                break
            }
        }
        
        //Messaging variables
        var title = ""
        var message = ""
        
        // If not, then user has won,stop the timer
        if isWon == true {
            
            if milliseconds > 0 {
                timer?.invalidate()
            }
            
            title = "Congratulations!"
            message = "You've won"
        }
        else {
            //if there are unmatched cards, check if there's any time left
            if milliseconds > 0 {
                return
            }
            title = "Game Over"
            message = "You've lost"
        }
        
        //Show won/lost messaging
        showAlert(title,message)
   
    }
    func showAlert(_ title:String,_ message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
}

//End of ViewController class

//: Playground - noun: a place where people can play

import UIKit

class Spaceship {
    // fuelLevel property
    var fuelLevel = 50
    
    func liftOff() {
        
        // Decrement by 50
        fuelLevel -= 50
        
        //print statements
        print("We have lift off!")
        print ("Current Fuel Level at :\(fuelLevel)")
    }
    
    func addFuel(fuel:Int) {
        
        //Add fuel
        fuelLevel += fuel
        
        //Print Statements
        print ("Fuel Added.")
        print ("current Fuel level at: \(fuelLevel)")
        
    }
    func thrust() {
        
        //Decrement fuel
        fuelLevel -= 15
        
        // Print Statements
        print("Rocket is thrusting")
        print("Current Fuel Level at : \(fuelLevel)")
        
    }
    
    func cruise() {
        
        //Decrement fuel
        fuelLevel -= 5
        
        //Print statements
        print("Rocket is thrusting")
        print("Current Fuel Level at :\(fuelLevel)")
        
    }
    
    
}


let myship = Spaceship()
myship.addFuel(fuel: 50)
myship.liftOff()
myship.thrust()
myship.cruise()

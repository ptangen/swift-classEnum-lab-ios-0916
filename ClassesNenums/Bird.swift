//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


// The first one should be called Speed. This enum is used for comparison and has raw values, so it should inherit from Int. It should have three cases: slow, medium, and fast. Create this enum now, in Bird.swift.

enum Speed: Int {
    case slow = 1
    case medium = 2
    case fast = 3
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        return self.rawValue >= speed.rawValue
    }
}

// Next, create an enum called Diet. (This enum does not need to do any comparisons, so it does not need to have any raw values associated with it.) The cases for Diet should be meatEater and vegetarian.

    enum Diet {
        case meatEater
        case vegetarian
    }

// Then create an enum called Sex. The cases of this enum should be male and female.
    
    enum Sex {
        case male
        case female
    }


// create a new class called Trex. Declare that class in Bird.swift.

class Trex {
// Add a stored property called speed to your Trex class. This property should be of type Speed and should initially be set to Speed.fast.
    var speed = Speed.fast
    //Add a stored property called diet to your Trex class. This property should be of type Diet and should be set to Diet.meatEater.
    let diet = Diet.meatEater
    
    // Add a property called name of type String to Trex.
    let name: String
    
    // Add a property called sex of type Sex to Trex.
    let sex: Sex
    
    // Add a property called isAlive of type Bool to Trex. This should initially be set to true.
    var isAlive: Bool = true
    
    // Create an initializer for Trex. This initializer should take two parameters, name and sex, and assign those parameters to the corresponding properties.
    init(name:String, sex: Sex){
        self.name = name
        self.sex = sex
    }
    
    // Create a method called speak(). This method should return the string ""ROAAAWWWWRRRRR!!!!!!".
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    // Create a method called isFaster(thanTrex:). This method should take one parameter of type Trex called trex. It should return true if the instance of Trex which is calling on this method is called is faster than the parameter passed in.
    func isFaster(thanTrex trex: Trex) -> Bool {
        return self.speed.rawValue > trex.speed.rawValue
    }
    
    // Create a method called eat(otherTrex:). This method should take one parameter of type Trex called trex. If the instance of Trex which calls on this method is faster than the parameter that is passed in, it should "eat" the other Trex (by setting the other Trex's isAlive property to false).
    func eat(otherTrex trex: Trex){
        trex.isAlive = self.speed.rawValue < trex.speed.rawValue
    }
    
}




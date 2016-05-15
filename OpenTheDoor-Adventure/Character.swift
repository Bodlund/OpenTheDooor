//
//  Character.swift
//  OpenTheDoor-Adventure
//
//  Created by Daniel Hansson on 2016-05-15.
//  Copyright © 2016 Block18. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var type: String
    var skills: [String]
    
    var HP = 20
    var strength = 10
    var agility = 10
    var intelligence = 10
    var endurance = 10
    var charisma = 10
    var luck = 10
    
    init(name:String, type:String, skill:String){
        self.name = name
        self.type = type
        self.skills = []
        self.skills.append(skill)
    }
}

class Hunter: Character {
    /*
     With cunning traps to catch all kinds of prey,
     the Hunter is the perfect predator.
    */
}
class Brute: Character {
    /*
     The Brute is a person who beyond all obstacles still manages to be successful.
     A brute will often be troubled in life, but will persevere in the end.
    */
    
}
class ShadowWalker: Character {
    /*
     With no morals or emotions clouding their judgment,
     a Shadow Walker is able to accomplish tasks and solve
     problems in the most efficient and logical way.
     */
}
class Believer: Character {
    /*
     The Believer rejects logic and fact in exchange for faith in fairy tales,
     mythology, and misinformation; which they wrongly declare as truth.
     */
}
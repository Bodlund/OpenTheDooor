//
//  Room.swift
//  OpenTheDoor-Adventure
//
//  Created by Daniel Hansson on 2016-05-15.
//  Copyright © 2016 Block18. All rights reserved.
//

import Foundation
class Room {
    
    func createRoom(NumRows: Int, NumColumns: Int) -> Array<Array<Double>> {
        
        var room = Array<Array<Double>>()
        for _ in 0...NumColumns {
            room.append(Array(count:NumRows, repeatedValue:Double()))
        }
        return room
        
    }
    
}




//
//  CommonVarAndEnums.swift
//  OpenTheDoor
//
//  Created by Monies on 2016-05-13.
//  Copyright © 2016 Block18. All rights reserved.
//

import Foundation
import UIKit


struct Constants {
    
    static let screenWidth      = UIScreen.mainScreen().bounds.width
    static let screenHeight     = UIScreen.mainScreen().bounds.height
    
    
    //Constants For TextLabels for use on scrollview
    static let xDistanceBeforeTextLabel     = screenWidth/100
    static let yDistanceBeforeNextTextLabel = screenWidth/320
    static let textLabelHeight  = screenHeight/50
    static let textLabelWidth   = screenWidth - xDistanceBeforeTextLabel*2
    
}

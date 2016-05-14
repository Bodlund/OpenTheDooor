//
//  ViewController.swift
//  OpenTheDoor-Adventure
//
//  Created by Monies on 2016-05-14.
//  Copyright © 2016 Block18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var test: UIView!
    
    @IBAction func tempButton(sender: AnyObject) {
        
        printStoryText("Welcome to OpenTheDoor")
        
    }
    var lastPosition : CGPoint = CGPointMake(0, 0)
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded Main View")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printStoryText(textToPrint:String) {
        
        let labelFrame = CGRectMake(Constants.xDistanceBeforeTextLabel, lastPosition.y + Constants.textLabelHeight + (Constants.yDistanceBeforeNextTextLabel), Constants.textLabelWidth, Constants.textLabelHeight)
        //let labelFrame = CGRectMake(0, 200, 320, 200)
        lastPosition.x = labelFrame.origin.x + labelFrame.width
        lastPosition.y = labelFrame.origin.y + labelFrame.height
        
        let newTextLabel = CLTypingLabel(frame:labelFrame)
        newTextLabel.textColor = UIColor.blackColor()
        mainScrollView?.addSubview(newTextLabel)
        newTextLabel.text = textToPrint

    }
    
}


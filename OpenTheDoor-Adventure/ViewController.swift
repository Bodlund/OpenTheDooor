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
        
        printStoryText("Welcome to OpenTheDoor", clickable: false)
        
    }
    var lastPosition : CGPoint = CGPointMake(0, 0)
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded Main View")
        for line in introOne{
            printStoryText(line, clickable: false)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printStoryText(textToPrint:String, clickable: Bool) {
        
        let labelFrame = CGRectMake(Constants.xDistanceBeforeTextLabel, lastPosition.y + Constants.textLabelHeight + (Constants.yDistanceBeforeNextTextLabel), Constants.textLabelWidth, Constants.textLabelHeight)
        //let labelFrame = CGRectMake(0, 200, 320, 200)
        lastPosition.x = labelFrame.origin.x + labelFrame.width
        lastPosition.y = labelFrame.origin.y + labelFrame.height
        
        let newTextLabel = CLTypingLabel(frame:labelFrame)
        newTextLabel.textColor = UIColor.blackColor()
        mainScrollView?.addSubview(newTextLabel)
        newTextLabel.text = textToPrint
        
        if clickable {
            let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.textClicked(_:)))
            tapGesture.numberOfTapsRequired = 1
            newTextLabel.userInteractionEnabled =  true
            newTextLabel.addGestureRecognizer(tapGesture)
        }

    }
    
    func textClicked(sender: UITapGestureRecognizer) {
        print("-TAP-")
    }
    
}


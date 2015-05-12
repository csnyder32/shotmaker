//
//  ViewController.swift
//  ShotMaker
//
//  Created by Chris Snyder on 4/22/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var shotsMadeText: UITextField!

    @IBOutlet weak var shotsAttemptedText: UITextField!
    @IBOutlet weak var outcomeLabel: UILabel!

    
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func percentageMake(sender: AnyObject)
    {
       calculateShootingPercentage()
        shotsAttemptedText.text = ""
        shotsMadeText.text = ""

    }

    @IBOutlet weak var outComeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //figures out user shooting percentage
    func calculateShootingPercentage ()
    {
        //convert a string to a double
        var shootsMade = NSString(string: shotsMadeText.text).doubleValue
        var shotsAtt = NSString(string: shotsAttemptedText.text).doubleValue


        //convert the double to an int so it can be compared
        var percentage = shootsMade / shotsAtt * 100
        var finalPercentage:Int = Int(percentage)

//test final percentage to determine what the outcome label says and what the image is
        if finalPercentage > 50 {
            outComeLabel.text = "You are on fire.  You made \(finalPercentage)%"
            imageView.image = UIImage(named: "mj")
            println(finalPercentage)
        } else if finalPercentage < 50 {
            outComeLabel.text = "You better keep working.  You made \(finalPercentage)%"
            imageView.image = UIImage(named: "air")
            println(finalPercentage)
        }


    }

}




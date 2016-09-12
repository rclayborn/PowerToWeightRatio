//
//  ViewController.swift
//  PowerToWeightRatio
//
//  Created by Randall Clayborn on 9/11/16.
//  Copyright © 2016 claybear39. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var wattsTextfield: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var LevelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func calculate(_ sender: AnyObject) {
        
        let weightInteger = Int(weightTextfield.text!)
        let wattsInteger = Int(wattsTextfield.text!)
        
        let kmWeight = Double(weightInteger!) / 2.2
        let FTP = Double(wattsInteger!) / kmWeight
        
        let srtFTP = NSString(format: "%.2f", FTP)
        answerLabel.text = "Your Power To Weight Ratio: \(srtFTP)"
        
        switch FTP {
        case 0...2.5:
        print("beginner")
            LevelLabel.text = "Beginner, not ready to race"
        case 2.6...3:
            LevelLabel.text = "Fair or cat 5 racer"
        case 3.1...3.5:
            LevelLabel.text = "Moderate, cat 4 racer"
        case   3.6...4.2:
            LevelLabel.text = "Good, Local hotdog, cat 3 racer"
        case   4.3...4.7:
            LevelLabel.text = "Very Good cat 2 semi-pro Racer"
        case   4.8...5.2:
            LevelLabel.text = "Excellent, cat 1 pro Racer"
        case   5.3...5.7:
            LevelLabel.text = "Exceptional, National pro Racer"
        case   5.8...6.7:
            LevelLabel.text = "World Class International Pro Racer"

        default:
        print("Please try again there has been an error")
        }
        
    }


}


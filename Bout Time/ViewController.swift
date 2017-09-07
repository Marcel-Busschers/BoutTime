//
//  ViewController.swift
//  Bout Time
//
//  Created by Marcel Busschers on 2017/08/30.
//  Copyright © 2017 Marcel Busschers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var eventLabel1: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!
    @IBOutlet weak var eventLabel3: UILabel!
    @IBOutlet weak var eventLabel4: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    // MARK: Action Buttons
    
    @IBAction func downFullButton(_ sender: UIButton) {
        // TODO: Change text
        
        if let image: UIImage = UIImage(named: "down_full") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upHalfButton1(_ sender: UIButton) {
        // TODO: Change Text
        
        if let image: UIImage = UIImage(named: "up_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func downHalfButton1(_ sender: UIButton) {
        // TODO: Change Text 
        
        if let image: UIImage = UIImage(named: "down_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upHalfButton2(_ sender: UIButton) {
        // TODO: Change Text
        
        if let image: UIImage = UIImage(named: "up_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func downHalfButton2(_ sender: UIButton) {
        // TODO: Change Text
        
        if let image: UIImage = UIImage(named: "down_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upFullButton(_ sender: UIButton) {
        // TODO: Change Text
        
        if let image: UIImage = UIImage(named: "up_full") {
            sender.setImage(image, for: .normal)
        }
    }
    
    // MARK: Button Press & Change
    
    @IBAction func downFullTouchDown(_ sender: UIButton) {
        if let image: UIImage = UIImage(named: "down_full_selected") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upHalfTouchDown(_ sender: UIButton) {
        if let image: UIImage = UIImage(named: "up_half_selected") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func downHalfTouchDown(_ sender: UIButton) {
        if let image: UIImage = UIImage(named: "down_half_selected") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upFullTouchDown(_ sender: UIButton) {
        if let image: UIImage = UIImage(named: "up_full_selected") {
            sender.setImage(image, for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


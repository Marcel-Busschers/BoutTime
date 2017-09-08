//
//  ViewController.swift
//  Bout Time
//
//  Created by Marcel Busschers on 2017/08/30.
//  Copyright © 2017 Marcel Busschers. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    // VARIABLES
    
    var timerSeconds = 60
    var timer = Timer()
    var answeredEvents: [Int] = []
    let questionsToAsk: Int = 6
    var correctQuestions: Int = 0
    
    // MARK: Outlets
    
    @IBOutlet weak var eventLabel1: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!
    @IBOutlet weak var eventLabel3: UILabel!
    @IBOutlet weak var eventLabel4: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    
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
    
    // Buttons to see more information about event
    
    
    
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
    
    @IBAction func nextRound() {
        startGame()
        nextRoundButton.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Timer
    
    func runTimer() {
        timerSeconds = 60
        timer = Timer.init(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        timerSeconds -= 1
        timerLabel.text = "0:\(timerSeconds)"
        
        if timerSeconds == 0 {
            timer.invalidate()
            
            // TODO: Evalidate answers method
        }
    }
    
    // MARK: GAME CODE
    
    func startGame() {
        informationLabel.text = "Shake to Complete"
        runTimer()
        displayQuestion()
        
        
    }
        
    func displayQuestion() {
        var indexOfQuestion: Int = randomInt(until: historicalEvents.count)
        var fourEventsPerQuestion: [event] = []
        
        // Getting 4 un-asked questions' indexes to ask
        for _ in 1...4 {
            while answeredEvents.contains(indexOfQuestion) {
                indexOfQuestion = randomInt(until: historicalEvents.count)
            }
            answeredEvents.append(indexOfQuestion)
            fourEventsPerQuestion.append(historicalEvents[indexOfQuestion])
        }
        
        // set each label to each question
        eventLabel1.text = fourEventsPerQuestion[0].description
        eventLabel2.text = fourEventsPerQuestion[1].description
        eventLabel3.text = fourEventsPerQuestion[2].description
        eventLabel4.text = fourEventsPerQuestion[3].description
    }
    
    func randomInt(until: Int) -> Int {
        return Int(arc4random_uniform(UInt32(until-1)))
    }
    
    func endRound() {
        // TODO: Run evulation method
        timer.invalidate()
        informationLabel.text = "Click an event to learn more"
        nextRoundButton.isHidden = false
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}


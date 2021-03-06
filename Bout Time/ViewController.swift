//
//  ViewController.swift
//  Bout Time
//
//  Created by Marcel Busschers on 2017/08/30.
//  Copyright © 2017 Marcel Busschers. All rights reserved.
//

import UIKit
import GameKit
import AVFoundation

class ViewController: UIViewController {
    
    // VARIABLES
    
    var timerSeconds = 60
    var timer = Timer()
    var isTimerRunning = false
    
    var answeredEvents: [Int] = []
    let questionsToAsk: Int = 6
    var correctQuestions: Int = 0
    
    var event1URL: URL? = nil
    var event2URL: URL? = nil
    var event3URL: URL? = nil
    var event4URL: URL? = nil
    
    var request: URLRequest? = nil
    
    // MARK: Outlets

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    
    @IBOutlet weak var eventButton1: UIButton!
    @IBOutlet weak var eventButton2: UIButton!
    @IBOutlet weak var eventButton3: UIButton!
    @IBOutlet weak var eventButton4: UIButton!
    
    
    // MARK: Action Buttons
    
    @IBAction func downFullButton(_ sender: UIButton) {
        swapTitles(root: eventButton1, with: eventButton2, startIndex: 0, endIndex: 1)
        
        if let image: UIImage = UIImage(named: "down_full") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upHalfButton1(_ sender: UIButton) {
        swapTitles(root: eventButton2, with: eventButton1, startIndex: 1, endIndex: 0)
        
        if let image: UIImage = UIImage(named: "up_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func downHalfButton1(_ sender: UIButton) {
        swapTitles(root: eventButton2, with: eventButton3, startIndex: 1, endIndex: 2)
        
        if let image: UIImage = UIImage(named: "down_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upHalfButton2(_ sender: UIButton) {
        swapTitles(root: eventButton3, with: eventButton2, startIndex: 2, endIndex: 1)
        
        if let image: UIImage = UIImage(named: "up_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func downHalfButton2(_ sender: UIButton) {
        swapTitles(root: eventButton3, with: eventButton4, startIndex: 2, endIndex: 3)
        
        if let image: UIImage = UIImage(named: "down_half") {
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func upFullButton(_ sender: UIButton) {
        swapTitles(root: eventButton4, with: eventButton3, startIndex: 3, endIndex: 2)
        
        if let image: UIImage = UIImage(named: "up_full") {
            sender.setImage(image, for: .normal)
        }
    }
    
    // Buttons to see more information about event
    
    @IBAction func checkWikiEvent1() {
        loadRequestIntoWebView(url: event1URL)
    }
    
    @IBAction func checkWikiEvent2() {
        loadRequestIntoWebView(url: event2URL)
    }
    
    @IBAction func checkWikiEvent3() {
        loadRequestIntoWebView(url: event3URL)
    }
    
    @IBAction func checkWikiEvent4() {
        loadRequestIntoWebView(url: event4URL)
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
        if isTimerRunning == false {
            timerLabel.text = "0:60"
            timerSeconds = 60
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            isTimerRunning = true
        }
    }
    
    func updateTimer() {
        timerSeconds -= 1
        if timerSeconds >= 10 {
            timerLabel.text = "0:\(timerSeconds)"
        } else {
            timerLabel.text = "0:0\(timerSeconds)"
        }
        
        
        if timerSeconds == 0 {
            endRound()
        }
        
        
    }
    
    func endTimer() {
        timer.invalidate()
        timerSeconds = 60
        isTimerRunning = false
    }
    
    // MARK: GAME CODE
    
    func resetGame() {
        answeredEvents.removeAll()
        correctQuestions = 0
        startGame()
    }
    
    func startGame() {
        if !checkGameEnd() {
            informationLabel.text = "Shake to Complete"
            runTimer()
            displayQuestion()
            setEventButtonsEnabled(false)
        }
    }
    
    var fourEventsPerQuestion: [event] = []
    func displayQuestion() {
        fourEventsPerQuestion.removeAll()
        var indexOfQuestion: Int = randomInt(until: historicalEvents.count)
        
        // Getting 4 un-asked questions' indexes to ask
        for _ in 1...4 {
            while answeredEvents.contains(indexOfQuestion) {
                indexOfQuestion = randomInt(until: historicalEvents.count)
            }
            answeredEvents.append(indexOfQuestion)
            fourEventsPerQuestion.append(historicalEvents[indexOfQuestion])
        }
        
        // set each label to each question
        eventButton1.setTitle(fourEventsPerQuestion[0].description, for: .normal)
        eventButton2.setTitle(fourEventsPerQuestion[1].description, for: .normal)
        eventButton3.setTitle(fourEventsPerQuestion[2].description, for: .normal)
        eventButton4.setTitle(fourEventsPerQuestion[3].description, for: .normal)
        
        setEventURL()
        
    }
    
    func setEventURL() {
        event1URL = fourEventsPerQuestion[0].webViewURL
        event2URL = fourEventsPerQuestion[1].webViewURL
        event3URL = fourEventsPerQuestion[2].webViewURL
        event4URL = fourEventsPerQuestion[3].webViewURL
    }
    
    func randomInt(until: Int) -> Int {
        return Int(arc4random_uniform(UInt32(until-1)))
    }
    
    func evaluateAnswers() -> Bool {
        let eventYears: [Int] = [fourEventsPerQuestion[0].year, fourEventsPerQuestion[1].year, fourEventsPerQuestion[2].year, fourEventsPerQuestion[3].year]
        
        let eventYearsSorted = eventYears.sorted()
        
        if eventYears == eventYearsSorted {
            return true
        } else {
            return false
        }
        
    }
    
    func endRound() {
        let correct = evaluateAnswers()
        if correct {
            playSound(.correct)
            if let image: UIImage = UIImage(named: "next_round_success") {
                nextRoundButton.setImage(image, for: .normal)
            }
            correctQuestions += 1
        } else {
            playSound(.incorrect)
            if let image: UIImage = UIImage(named: "next_round_fail") {
                nextRoundButton.setImage(image, for: .normal)
            }
        }
        endTimer()
        informationLabel.text = "Click an event to learn more"
        nextRoundButton.isHidden = false
        setEventButtonsEnabled(true)
    }
    
    func setEventButtonsEnabled(_ value: Bool) {
        eventButton1.isEnabled = value
        eventButton2.isEnabled = value
        eventButton3.isEnabled = value
        eventButton4.isEnabled = value
    }
    
    // MARK: SHAKE GESTURE
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        endRound()
    }
    
    // URL 
    
    func loadRequestIntoWebView(url: URL?) {
        
        if let givenURL = url {
            request = URLRequest(url: givenURL)
        }
        performSegue(withIdentifier: "webViewSegue", sender: nil)
    }
    
    // MARK: Helper Code
    
    func swapTitles(root: UIButton, with end: UIButton, startIndex: Int, endIndex: Int) {
        
        //Swapping titles
        let rootTitle = root.title(for: .normal)
        let endTitle = end.title(for: .normal)
        
        root.setTitle(endTitle, for: .normal)
        end.setTitle(rootTitle, for: .normal)
        
        //Swapping events in array
        let rootEvent = fourEventsPerQuestion[startIndex]
        let endEvent = fourEventsPerQuestion[endIndex]
        
        fourEventsPerQuestion[startIndex] = endEvent
        fourEventsPerQuestion[endIndex] = rootEvent
        setEventURL()
    }
    
    func checkGameEnd() -> Bool{
        if answeredEvents.count == questionsToAsk*4  {
            performSegue(withIdentifier: "gameEndSegue", sender: nil)
            endTimer()
            return true
        }
        return false
    }
    
    // Mark: Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameEndSegue" {
            if let destination = segue.destination as? GameOverController {
                destination.correctQuestions = self.correctQuestions
            }
        }
        if segue.identifier == "webViewSegue" {
            if let destination = segue.destination as? WebViewController {
                destination.request = self.request
            }
        }
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        if segue.identifier == "unwindSegue" {
            resetGame()
        }
    }
    
    // Mark: Sound
    
    var audioPlayer = AVAudioPlayer()
    
    enum typeOfSound: String {
        case correct = "CorrectDing"
        case incorrect = "IncorrectBuzz"
    }
    
    func playSound(_ sound: typeOfSound) {
        if sound == .correct {
            
            if let soundBundle = Bundle.main.path(forResource: sound.rawValue, ofType: "wav") {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: soundBundle))
                    audioPlayer.prepareToPlay()
                    audioPlayer.play()
                } catch {}
            }
            
        } else {
            
            if let soundBundle = Bundle.main.path(forResource: sound.rawValue, ofType: "wav") {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: soundBundle))
                    audioPlayer.prepareToPlay()
                    audioPlayer.play()
                } catch {}
            }
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}


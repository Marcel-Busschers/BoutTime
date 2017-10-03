//
//  GameOverController.swift
//  Bout Time
//
//  Created by Marcel Busschers on 2017/09/01.
//  Copyright © 2017 Marcel Busschers. All rights reserved.
//

import UIKit

class GameOverController: UIViewController {
    
    let questionsToAsk: Int = 6
    var correctQuestions: Int = 0
    
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(correctQuestions)/\(questionsToAsk)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

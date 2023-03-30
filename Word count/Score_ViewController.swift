//
//  Score_ViewController.swift
//  Word count
//
//  Created by Youssef Azroun on 2023-03-27.
//

import UIKit

class Score_ViewController: UIViewController {
    
    let score = Score.sharedScore.dataToPass
    @IBOutlet weak var currentScoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentScoreLabel.text = "Current score: \(score)"

    }
    
    @IBAction func playAgainBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "playAgain", sender: nil)
    }
    
    
    @IBAction func backToMenuBtn(_ sender: Any) {
        performSegue(withIdentifier: "menu", sender: nil)
    }
    
}

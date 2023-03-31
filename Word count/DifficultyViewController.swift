//
//  DifficultyViewController.swift
//  Word count
//
//  Created by Youssef Azroun on 2023-03-31.
//

import UIKit

class DifficultyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func easyBtn(_ sender: UIButton) {
        let easy: Int = 6
        Difficulty.difficulties.dataToPass = easy
        performSegue(withIdentifier: "easy", sender: nil)
    }
    
    @IBAction func normalBtn(_ sender: UIButton) {
        let normal: Int = 4
        Difficulty.difficulties.dataToPass = normal
        performSegue(withIdentifier: "normal", sender: nil)
    }
    
    @IBAction func hardBtn(_ sender: UIButton) {
        let hard: Int = 2
        Difficulty.difficulties.dataToPass = hard
        performSegue(withIdentifier: "hard", sender: nil)
    }
    
}

class Difficulty{
    static let difficulties = Difficulty()
    var dataToPass: Int = 0
}

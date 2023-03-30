//
//  Game_ViewController.swift
//  Word count
//
//  Created by Youssef Azroun on 2023-03-27.
//

import UIKit

class Game_ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var userTF: UITextField!
    
    var secondCountDown = 5
    var score = 0
    var Words : [String] = ["hello" , "gum" , "profit" , "rich"
                            , "palm" , "value" , "friendly" , "aunt"
                            , "oak" , "village", "spring" , "heel"
                            , "ask" , "chin" , "chief"]
    
    var Position = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = Words[Position]
        userTF.delegate = self
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true){(_) in
            self.countDown()
        }

    }
    
    func countDown() {
        timeLabel.text = ":0\(secondCountDown)"
        secondCountDown -= 1
        if secondCountDown == -1{
            secondCountDown = 5
            score -= 1
            scoreLabel.text = "Score: \(score)"
            wordsFunc()
        }
    }
    
    func wordsFunc(){
        Position += 1
        if Position < Words.count{
            wordLabel.text = Words[Position]
        }else{
            Score.sharedScore.dataToPass = score
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "score_vc") as? Score_ViewController else{
                return
            }
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let userWord : String = String(userTF.text!)
        if userWord == wordLabel.text {
            score += 1
            scoreLabel.text = "Score: \(score)"
            userTF.text = ""
        }else {
            score -= 1
            scoreLabel.text = "Score: \(score)"
            userTF.text = ""
        }
        
        wordsFunc()
        secondCountDown = 5
        countDown()
        return true
    }
    

}
class Score {
    static let sharedScore = Score()
    var dataToPass : Int = 0
}

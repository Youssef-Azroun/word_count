//
//  ViewController.swift
//  Word count
//
//  Created by Youssef Azroun on 2023-03-22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func howToPlayBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "howToPlay_VC", sender: nil)
    }
    
    @IBAction func startGameBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "StartGame", sender: nil)
    }
    
}


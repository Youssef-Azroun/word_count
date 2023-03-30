//
//  HowToPlay_ViewController.swift
//  Word count
//
//  Created by Youssef Azroun on 2023-03-27.
//

import UIKit

class HowToPlay_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backToMenuBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "backToMenu_VC", sender: nil)
    }
}

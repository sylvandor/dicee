//
//  ViewController.swift
//  Dicee
//
//  Created by Scott Johnson on 4/22/19.
//  Copyright © 2019 Scott Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dice = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: dice[randomDiceIndex1])
        diceImageView2.image = UIImage(named: dice[randomDiceIndex2])
    }
}

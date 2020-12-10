//
//  ViewController.swift
//  Dicee
//
//  Created by Yebin Park on 2020-12-08.
//  Copyright © 2020 Yebin Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //creating variables to generate random number
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    //creating a constant array
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    //it will update dice images follow by random number created
    func updateDiceImages() {
        //generating random number between 0-5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //display correct dice image based on the random number generated
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    //when the device is shaken, then it calls updateDiceImages function
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
        
    }
    

}


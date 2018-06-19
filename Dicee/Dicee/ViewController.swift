//
//  ViewController.swift
//  Dicee
//
//  Created by Himanshu Panwar on 17/06/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Roll Button Pressed...")
        updateDiceImages()
    }
    
    func updateDiceImages(){
        //get a random number
        randomDiceIndex1 = Int(arc4random_uniform(UInt32(diceArray.count)))
        randomDiceIndex2 = Int(arc4random_uniform(UInt32(diceArray.count)))
        
        //call the dice image
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}


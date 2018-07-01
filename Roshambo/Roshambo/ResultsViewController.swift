//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Himanshu Panwar on 01/07/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit


enum Shape : String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    static func randomGenerator() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomNumber = Int(arc4random_uniform(3))
        return(Shape(rawValue: shapes[randomNumber]))!
    }
}

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var image : UIImageView!
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var button : UIButton!
    
    var userChoice : Shape!
    let generatedChoice : Shape = Shape.randomGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }
    
    func displayResult(){
        var imageName : String
        var text : String
        let matchUp = "\(generatedChoice.rawValue) vs \(userChoice.rawValue)"
        
        switch (userChoice!, generatedChoice) {
        case let (user, generator) where user==generator:
            text = "\(matchUp) : it's a tie 🤪"
            imageName = "itsATie"
        case (.Rock,.Scissors),(.Paper,.Rock),(.Scissors,.Paper):
            text = "\(matchUp) : You Win 😎"
            imageName = "\(userChoice.rawValue)-\(generatedChoice.rawValue)"
        default:
            text = "\(matchUp) : You Lose 😢"
            imageName = "\(generatedChoice.rawValue)-\(userChoice.rawValue)"
        }
        
        image.image = UIImage(named: imageName)
        label.text = text
    }
    
    @IBAction func playAgain(_ sender : UIButton){
        dismiss(animated: true, completion: nil)
    }
    
}

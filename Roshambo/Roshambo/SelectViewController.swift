//
//  ViewController.swift
//  Roshambo
//
//  Created by Himanshu Panwar on 01/07/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {
    
    @IBOutlet weak var rock : UIButton!
    @IBOutlet weak var paper : UIButton!
    @IBOutlet weak var scissors : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rock.setTitle("Rock", for: UIControlState())
        paper.setTitle("Paper", for: UIControlState())
        scissors.setTitle("Scissors", for: UIControlState())
        
    }
    
    // MARK : Programmatic Approach
    @IBAction func selectRock(_ sender : UIButton){
        var controller : ResultsViewController!
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        controller.userChoice = getButtonTitle(sender)
        present(controller, animated: true, completion: nil)
    }
    
    // MARK : Segue With Code
    @IBAction func selectPaper(_ sender : UIButton){
        performSegue(withIdentifier: "Hit", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Hit"{
            let controller = segue.destination as! ResultsViewController
            controller.userChoice = getButtonTitle(sender as! UIButton)
        }
    }
    
    private func getButtonTitle(_ sender : UIButton) -> Shape {
        let title = sender.title(for: UIControlState())!
        return Shape(rawValue: title)!
    }
    
}


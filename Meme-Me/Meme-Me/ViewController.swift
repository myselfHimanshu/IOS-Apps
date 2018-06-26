//
//  ViewController.swift
//  Meme-Me
//
//  Created by Himanshu Panwar on 24/06/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var colorView : UIView!
    @IBOutlet weak var redControl : UISwitch!
    @IBOutlet weak var greenControl : UISwitch!
    @IBOutlet weak var blueControl : UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func changeColor(){
        if self.redControl==nil{
            return
        }
        
        let r : CGFloat = self.redControl.isOn ? 1 : 0
        let g : CGFloat = self.greenControl.isOn ? 1 : 0
        let b : CGFloat = self.blueControl.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    


}


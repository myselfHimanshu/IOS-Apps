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
    @IBOutlet var label : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        // label
        let label = UILabel()
        label.frame = CGRect(x: 200, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // button1
        let button1 = UIButton()
        button1.frame = CGRect(x: 10, y: 500, width: 180, height: 60)
        button1.setTitle("Click to increment..", for: .normal)
        button1.setTitleColor(UIColor.black, for: .normal)
        button1.backgroundColor = UIColor.green
        view.addSubview(button1)
        
        // button2
        let button2 = UIButton()
        button2.frame = CGRect(x: 215, y: 500, width: 180, height: 60)
        button2.setTitle("Click to decrement..", for: .normal)
        button2.setTitleColor(UIColor.black, for: .normal)
        button2.backgroundColor = UIColor.yellow
        view.addSubview(button2)
        
        button1.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        */
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    


}


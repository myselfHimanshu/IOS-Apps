//
//  ViewController.swift
//  Xylophone
//  Created by Himanshu Panwar on 21/06/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        let buttonPressed = sender.tag
        
        //print(sender.tag)
        let audioFilePath = Bundle.main.path(forResource: "note\(buttonPressed)", ofType: "wav")
        let url = URL(fileURLWithPath: audioFilePath!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch _{
            print("couldn't load file :(")
            //print(error)
        }
        
        
    }
    
  

}


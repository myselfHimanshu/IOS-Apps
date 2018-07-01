//
//  ViewController.swift
//  UIKIT-step2
//
//  Created by Himanshu Panwar on 26/06/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func experiment(_ sender : UIButton){
        
        //Image Picker Controller
        /*
        let controller = UIImagePickerController()
        present(controller, animated: true, completion: nil)
        */
        
        //Activity View Controller
        /*
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        present(controller, animated: true, completion: nil)
        */
        
        //Alert View Controller
        /*
        let controller = UIAlertController()
        
        controller.title = "This is an ALERT!!!"
        controller.message = "This is a test..."
        
        controller.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: { (alert:UIAlertAction!) in print("Ok button tapped")
        }))
        present(controller, animated: true, completion: nil)
        //dismiss(animated: true, completion: nil)
        */
        
    }


}


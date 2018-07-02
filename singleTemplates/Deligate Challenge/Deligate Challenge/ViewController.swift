//
//  ViewController.swift
//  Deligate Challenge
//
//  Created by Himanshu Panwar on 02/07/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let zipcodeDeligate = ZipCodeTextFieldDeligate()
    let cashTextDeligate = CashTextFieldDeligate()
    
    @IBOutlet weak var zipcodeField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var writeTextSwitch: UISwitch!
    @IBOutlet weak var charCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipcodeField.delegate = self.zipcodeDeligate
        self.cashTextField.delegate = self.cashTextDeligate
        self.textField.delegate = self
        
        self.writeTextSwitch.setOn(false, animated: false)
        
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        return self.writeTextSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func toggleTextSwitch(_ sender : UISwitch){
        if !sender.isOn{
            self.textField.resignFirstResponder()
        }
    }


}


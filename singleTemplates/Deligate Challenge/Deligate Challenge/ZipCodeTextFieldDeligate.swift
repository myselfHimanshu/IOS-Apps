//
//  ZipCodeTextFieldDeligate.swift
//  Deligate Challenge
//
//  Created by Himanshu Panwar on 02/07/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDeligate : NSObject, UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

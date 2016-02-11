//
//  WelcomeViewController.swift
//  StartingAnApp
//
//  Created by Manuel Rios on 1/27/16.
//  Copyright © 2016 Manuel Rios. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    var hello :String? = "Hello, "

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBAction func submitButtonAction(sender: UIButton) {
        print("I am here")
        print(messageLabel.text)
        
        //ThIS WAY TO UNWRAP THE OPTIONAL
        messageLabel.text = hello! + nameTextField.text!
        
        //OR THIS WAY, IMPLICITY UNWRAPPED
        if let nameText = nameTextField.text {
            messageLabel.text = hello! + nameText
        }
        
        //GUARD/DEFERRED
        guard let nameText = nameTextField.text
            else { return }
        
        messageLabel.text = hello! + nameText
        
        guard nameTextField.text != nil
            else {return}
        
        messageLabel.text = hello! + nameTextField.text!
        
        messageLabel.textColor = UIColor.greenColor()
        nameTextField.resignFirstResponder()
        
    }
}

extension WelcomeViewController : UITextFieldDelegate {
    func textFieldDidBeginEditing(textField: UITextField) {
        print("You just began to type")
    }
}

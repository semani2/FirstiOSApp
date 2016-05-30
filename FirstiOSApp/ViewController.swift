//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Sai on 5/29/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func tapButtonClicked(sender: AnyObject) {
        print("button clicked");
        labelOutlet.text = "Hi \(myTextField.text!)!"
        myTextField.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


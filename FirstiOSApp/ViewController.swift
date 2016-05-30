//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Sai on 5/29/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func tapButtonClicked(sender: AnyObject) {
        print("button clicked");
        labelOutlet.text = "Hi \(textField.text!)!"
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


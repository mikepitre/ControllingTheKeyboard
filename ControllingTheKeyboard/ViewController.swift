//
//  ViewController.swift
//  ControllingTheKeyboard
//
//  Created by Mike Pitre on 9/22/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var text: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func submitButton(sender: AnyObject) {
        
        label.text = text.text
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }


}


//
//  SecondViewController.swift
//  To Do List
//
//  Created by Mark on 22/10/2018.
//  Copyright © 2018 NMA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldOutlet: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    
    
    
    

    @IBAction func addAction(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items: [String]
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            
            items.append(textFieldOutlet.text!)
            
        } else {
            
            items = [textFieldOutlet.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        textFieldOutlet.text = ""
        
    }
    

}


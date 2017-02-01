//
//  SecondViewController.swift
//  To Do List
//
//  Created by Deborah Padilla on 01/31/2017.
//  Copyright (c) 2017 Deborah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet var item: UITextField!
    
    
    @IBAction func addItem(_ sender: AnyObject) {
        
        toDoList.append(item.text!!)
        
        item.text = ""
        
        UserDefaults.standard.set(toDoList, forKey: "toDoList")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.item.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: NSSet, with event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField!) -> Bool {
        
        item.resignFirstResponder()
        return true
        
    }
    

}


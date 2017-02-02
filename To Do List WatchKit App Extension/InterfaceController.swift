//
//  InterfaceController.swift
//  To Do List WatchKit App Extension
//
//  Created by Deborah on 2/1/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var defaults = UserDefaults(suiteName: "group.com.Deborah.toDoListAppGroup")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if defaults?.object(forKey: "toDoList") != nil {
            
            print(defaults?.object(forKey: "toDoList")! as Any)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

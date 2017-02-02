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
    
    var toDoItems = [String]()
    
    @IBOutlet var table: WKInterfaceTable!
    
    var defaults = UserDefaults(suiteName: "group.com.Deborah.toDoListAppGroup")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if defaults?.object(forKey: "toDoList") != nil {
            
            toDoItems = defaults?.object(forKey: "toDoList") as! [String]
        }
        
        table.setNumberOfRows(toDoItems.count, withRowType: "tableRowController")
        
        for (index, item) in toDoItems.enumerated() {
            
            let row = table.rowController(at: index) as! tableRowController
            
            row.tableRowLabel.setText(item)
        }
        
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print(rowIndex)
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

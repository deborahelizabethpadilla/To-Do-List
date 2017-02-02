//
//  FirstViewController.swift
//  To Do List
//
//  Created by Deborah Padilla on 01/31/2017.
//  Copyright (c) 2017 Deborah. All rights reserved.
//

import UIKit

var toDoList = [String]()

var defaults = UserDefaults(suiteName: "group.com.Deborah.toDoListAppGroup")

class FirstViewController: UIViewController, UITableViewDelegate {
    
    
    
    
    @IBOutlet var toDoListTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if defaults?.standard.object(forKey: "toDoList") != nil {
        
            toDoList = defaults?.object(forKey: "toDoList") as! [String]!
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            toDoList.remove(at: indexPath.row)
            
            defaults?.set(toDoList, forKey: "toDoList")
            
            defaults?.synchronize()
            
            toDoListTable.reloadData()
        }
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        toDoListTable.reloadData()
        
    }
    
    

}


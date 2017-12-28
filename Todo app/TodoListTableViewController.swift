//
//  ViewController.swift
//  Todo app
//
//  Created by Vu Nguyen on 12/27/17.
//  Copyright © 2017 Vu Nguyen. All rights reserved.
//

import UIKit

class TodolistTableViewController: UITableViewController {
    
    var todoArr = ["Buy egos", "Find Mike", "destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //MARK - TableView DataSource methods:
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return todoArr.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItemCell", for: indexPath)
        
        cell.textLabel?.text = todoArr[indexPath.row]
        
        return cell
        
    }
    
    //MARK - TableView delegate method:
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if (tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark){
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
}




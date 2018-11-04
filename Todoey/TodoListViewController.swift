//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Ashish Singh Chauhan on 05/11/18.
//  Copyright © 2018 Ashish Singh Chauhan. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["FindArthur", "Buy eggos", "Destroy demons"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //MARK : Table View datasource methods.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK : Table View Delegate Methods : This method detects which row is selected and we code it.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true) //This will change the highliting when a cell is selected
        
        //For check-mark on selection:
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    }

}


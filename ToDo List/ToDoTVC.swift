//
//  ToDoTVC.swift
//  ToDo List
//
//  Created by zero on 8/23/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class ToDoTVC: UITableViewController {
    
    //PROPERTIES
    var toDos = [ToDo]()

    //VDL
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toDo1 = ToDo()
        toDo1.name = "walk the dog"
        toDo1.important = false
        
        let toDo2 = ToDo()
        toDo2.name = "Buy Milk"
        toDo2.important = false
        
        toDos = [toDo1, toDo2]
}

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = UITableViewCell()
        cell.textLabel?.text = toDos[indexPath.row].name

return cell
    }
    
    // INIT
   
    
}//E.N.D.

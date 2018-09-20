//
//  ToDoTVC.swift
//  ToDo List
//
//  Created by zero on 8/23/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class ToDoTVC: UITableViewController {
    
    // PROPERTIES
  var toDoCoreData = [ToDoCoreData]()

    // View
   override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }

    // Methods
    
    func getToDos() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let toDosFromCoreData =  try? context.fetch(ToDoCoreData.fetchRequest()) {
                if let toDos = toDosFromCoreData as? [ToDoCoreData] {
                    ToDoCoreData = toDos
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ToDoCoreData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = UITableViewCell()
         // Cell Manipulation
        let currentToDo = ToDoCoreData[indexPath.row]
        if currentToDo.important {
            if let name = currentToDo.name{
                cell.textLabel?.text = "‼️" + currentToDo.name
            }
         
        } else {
         cell.textLabel?.text = currentToDo.name
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectedTodo = ToDoCoreData[indexPath.row]
        performSegue(withIdentifier: "moveToComplete", sender: selectedTodo)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let createVC = segue.destination as? NewToDoViewController {
            createVC.toDoTableVC = self
        }
        if let completeVC = segue.destination as? CompleteViewController {
            if let selectedToDo = sender as? ToDo {
            completeVC.todo = selectedToDo
            }
        }
    }
   
    
}//E.N.D.

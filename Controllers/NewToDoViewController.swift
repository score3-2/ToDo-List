//
//  NewToDoTableViewController.swift
//  ToDo List
//
//  Created by zero on 8/24/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class NewToDoViewController: UIViewController {

    //Properties
    var toDoTableVC: ToDoTVC? = nil
    
    //Conctions
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var impoertanTLabel: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    @IBAction func addToDo(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.important = switcher.isOn
        if let name = textField.text {
            newToDo.name = name
        }
        
        toDoTableVC?.toDos.append(newToDo)
        toDoTableVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    
    //VDL
    override func viewDidLoad() {
        super.viewDidLoad()
      //code
    }
    
}//END

//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by zero on 8/24/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    //Properties
    var todo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       completedLabel.text = todo.name
    }
    
    @IBOutlet weak var completedLabel: UILabel!
    @IBAction func completedButton(_ sender: Any) {
        
    }
    
}//End

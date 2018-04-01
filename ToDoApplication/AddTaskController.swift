//
//  AddTaskController.swift
//  ToDoApplication
//
//  Created by Betty Reaney on 4/1/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

protocol AddTask{
    func addTask(name: String)
}

class AddTaskController: UIViewController {

    @IBAction func addAction(_ sender: AnyObject) {
        if taskNameOutlet.text != "" {
            delegate?.addTask(name: taskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        
        }
    }
    
    @IBOutlet weak var taskNameOutlet: UITextField!
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

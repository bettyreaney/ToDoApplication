//
//  TaskCell.swift
//  ToDoApplication
//
//  Created by Betty Reaney on 3/31/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

protocol ChangeButton{
    func changeButton(checked: Bool, index: Int)
}

class TaskCell: UITableViewCell {

    
    @IBAction func checkBoxAction(_ sender: AnyObject) {
        if tasks![indexP!].checked{
            delegate?.changeButton(checked: false, index: indexP!)
        } else{
            delegate?.changeButton(checked: true, index: indexP!)
        }
    }
    
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    
    
    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?

}

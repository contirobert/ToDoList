//
//  AddTaskController.swift
//  ToDoList
//
//  Created by Bobby Conti on 6/29/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import UIKit

class AddTaskController: UIViewController {

    @IBOutlet weak var textField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

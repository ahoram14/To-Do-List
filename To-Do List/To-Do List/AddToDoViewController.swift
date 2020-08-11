//
//  AddToDoViewController.swift
//  To-Do List
//
//  Created by Amira Horam on 8/10/20.
//  Copyright © 2020 Amira Horam. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
var previousToDoTVC = ToDoTableViewController()
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    @IBOutlet weak var switchInput: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        
    }
    
    

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        let newToDo = ToDo()
       if let checkForInput = descriptionInput.text {
               newToDo.name = checkForInput
                newToDo.important = switchInput.isOn
           }
        previousToDoTVC.listToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
       
    }




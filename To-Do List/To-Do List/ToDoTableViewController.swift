//
//  ToDoTableViewController.swift
//  To-Do List
//
//  Created by Amira Horam on 8/10/20.
//  Copyright © 2020 Amira Horam. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    var listToDo : [ToDo] = []
    func createToDo () -> [ToDo]{
              
              let swiftToDo = ToDo ()
              swiftToDo.name = "Learn Swift"
              swiftToDo.important = true
              
              let dogToDo = ToDo()
              dogToDo.name = "Walk the Dog"
              
              return [swiftToDo, dogToDo]
          }
      
    override func viewDidLoad() {
    
        super.viewDidLoad()
        listToDo = createToDo()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return listToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let eachToDo = listToDo[indexPath.row]
        if eachToDo.important {
          cell.textLabel?.text = "❗️" + eachToDo.name
        } else {
          cell.textLabel?.text = eachToDo.name
        }



        return cell
    }
    
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             if let nextAddToDoVC = segue.destination as? AddToDoViewController{
                  nextAddToDoVC.previousToDoTVC = self
             }
            

        }
}
}

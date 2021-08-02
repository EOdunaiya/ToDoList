//
//  addToDoViewController.swift
//  ToDoList
//
//  Created by  Scholar on 7/20/21.
//

import UIKit

class addToDoViewController: UIViewController {
    
    var previousToDoTVC = ToDoTableTableViewController()
    
    @IBOutlet weak var descriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addButtonTapped(_ sender: Any) {
        let newToDo = ToDoClass()
            if let checkForInput = descriptionInput.text {
                 newToDo.description = checkForInput
                 newToDo.important = switchInput.isOn
            }
        
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
       }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    


}

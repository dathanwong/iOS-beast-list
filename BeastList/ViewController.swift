//
//  ViewController.swift
//  BeastList
//
//  Created by Dathan Wong on 10/13/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tasks = ["Task 1", "Task 2", "Task 3"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        if taskTextField.text != ""{
            tasks.append(taskTextField.text!)
            taskTextField.text = ""
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
}

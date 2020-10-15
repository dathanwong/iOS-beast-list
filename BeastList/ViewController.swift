//
//  ViewController.swift
//  BeastList
//
//  Created by Dathan Wong on 10/13/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BeastCellDelegate {

    var tasks = ["Task 1", "Task 2", "Task 3"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
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
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    func showTaskDescription(description: String) {
        taskDescriptionLabel.text = description
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! BeastTableViewCell
        cell.textLabel?.text = tasks[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

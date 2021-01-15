//
//  TaskDetailViewController.swift
//  Task
//
//  Created by Theo Davis on 1/13/21.
//

import UIKit

class TaskDetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var taskNotesTextView: UITextField!
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var taskDueDatePicker: UIDatePicker!
    
    //MARK: - Actions
    @IBAction func dueDatePickerDateChanged(_ sender: Any) {
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let task = task, let taskName = taskNameTextField.text, let taskNotes = taskNotesTextView.text else { return }
        let taskDueDate = taskDueDatePicker.date
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}//END OF CLASS

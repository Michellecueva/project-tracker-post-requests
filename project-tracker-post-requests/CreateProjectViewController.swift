//
//  CreateProjectViewController.swift
//  project-tracker-post-requests
//
//  Created by Michelle Cueva on 9/12/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class CreateProjectViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var createButton: UIButton!
    
    
    @IBAction func createButtonPressed(_ sender: UIButton) {
        guard let project = createProjectFromField() else {
            return
        }
        
        ProjectAPIClient.manager.postProject(project: project) { (result) in
            switch result {
            case .success(let success):
                self.navigationController?.popViewController(animated: true)
            case .failure(let error):
                print(error)
            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func createProjectFromField() -> Project? {
        guard let name = nameTextField.text else {return nil}
        
        return Project(name: name, dueDate: formatAirTableDate(date: datePicker.date))
    }
    
    private func formatAirTableDate(date: Date) -> String {
        return date.description.components(separatedBy: .whitespaces)[0]
    }

}

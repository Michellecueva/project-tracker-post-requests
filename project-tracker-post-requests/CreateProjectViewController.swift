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
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

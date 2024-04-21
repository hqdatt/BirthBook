//
//  contactComposeViewController.swift
//  BirthBook
//
//  Created by Hoang Quang Dat on 17/04/2024.
//

import UIKit

class contactComposeViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

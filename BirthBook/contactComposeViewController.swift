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
    
    var contactToEdit: Contact?
    
    var onComposeContact: ((Contact) -> Void)? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contact = contactToEdit {
            firstNameField.text = contact.firstName
            lastNameField.text = contact.lastName
            emailField.text = contact.email
            phoneField.text = contact.phoneNumber
            birthdayPicker.date = contact.birthday

            self.title = "Edit Contact"
        }
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func didTapDoneButton(_ sender: Any) {
        guard let firstName = firstNameField.text,
              !firstName.isEmpty
        else {
            presentAlert(title: "Oops...", message: "Make sure to add a first name to your contact!")
            return
        }
        var contact: Contact
        if let editContact = contactToEdit {
            contact = editContact
            contact.firstName = firstName
            contact.lastName = lastNameField.text
            contact.email = emailField.text
            contact.phoneNumber = phoneField.text
            contact.birthday = birthdayPicker.date
        } else {
            contact = Contact(firstName: firstName, lastName: lastNameField.text, email: emailField.text, phoneNumber: phoneField.text, birthday: birthdayPicker.date)
        }
        onComposeContact?(contact)
        dismiss(animated: true)
    }
    
    private func presentAlert(title: String, message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true)
    }
}

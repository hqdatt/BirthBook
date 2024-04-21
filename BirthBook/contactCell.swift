//
//  contactCell.swift
//  BirthBook
//
//  Created by Hoang Quang Dat on 17/04/2024.
//

import UIKit

class ContactCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var birthdayTrackerLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    
    var contact: Contact?
    
    func configure(with contact: Contact){
        self.contact = contact
        contact
    }
}

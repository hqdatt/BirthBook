//
//  contact.swift
//  BirthBook
//
//  Created by Hoang Quang Dat on 16/04/2024.
//

import UIKit

struct Contact: Codable, Equatable {
    
    var firstName: String
    var lastName: String?
    var email: String?
    var phoneNumber: String?
    var birthday: Date
    
    init(firstName: String, lastName: String? = nil, email: String? = nil, phoneNumber: String? = nil, birthday: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phoneNumber = phoneNumber
        self.birthday = birthday
    }
    
    var id: String = UUID().uuidString
}

extension Contact {
    static func saveContacts(_ contacts: [Contact]) {
        let defaults = UserDefaults.standard
        let encodededData = try! JSONEncoder().encode(contacts)
        defaults.set(encodededData, forKey: "Saved Contacts")
    }
    
    static func getContacts() -> [Contact] {
        let defaults = UserDefaults.standard
        guard let data = defaults.data(forKey: "Saved Contacts") else {
            return []
        }
        let decodedData = try! JSONDecoder().decode([Contact].self, from: data)
        return decodedData
    }
    
    func save() {
        var currentContacts = Contact.getContacts()
        
        if let matchingTaskIndex = currentContacts.firstIndex(where: {$0.id == self.id}) {
            currentContacts.remove(at: matchingTaskIndex)
            currentContacts.insert(self, at: matchingTaskIndex)
                    
        } else {
            currentContacts.append(self)
        }
        
        Contact.saveContacts(currentContacts)
    }
}

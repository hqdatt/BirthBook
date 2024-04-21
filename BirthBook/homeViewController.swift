//
//  homeViewController.swift
//  BirthBook
//
//  Created by Hoang Quang Dat on 16/04/2024.
//

import UIKit

class homeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contacts = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBAction func didTapNewContactBtn(_ sender: Any) {
        performSegue(withIdentifier: "composeSegue", sender: nil)
    }
}

extension homeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        return cell
    }
}

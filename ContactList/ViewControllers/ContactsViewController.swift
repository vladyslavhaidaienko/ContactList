//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Vladyslav Haidaienko on 08.02.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.row]
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let personVC = segue.destination as! PersonViewController
            personVC.person = persons[indexPath.row]
        }
    }
}

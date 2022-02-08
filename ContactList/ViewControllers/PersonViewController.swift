//
//  PersonViewController.swift
//  ContactList
//
//  Created by Vladyslav Haidaienko on 08.02.2022.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone number: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}

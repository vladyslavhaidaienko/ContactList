//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Vladyslav Haidaienko on 08.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        guard let contactsVC = viewControllers?.first as? ContactsViewController else { return }
        guard let sectionsVC = viewControllers?.last as? SectionsViewController else { return }
        
        contactsVC.persons = persons
        sectionsVC.persons = persons
    }
}

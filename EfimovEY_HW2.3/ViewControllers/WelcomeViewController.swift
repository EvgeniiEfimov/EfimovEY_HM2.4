//
//  WelcomeViewController.swift
//  EfimovEY_HW2.3
//
//  Created by User on 13.07.2021.
//

import UIKit


class WelcomeViewController: UIViewController {
    
    var userWelcome: [User]?
    var name: String?
    var surname: String?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = userWelcome else { return }
        for value in user {
            name = value.people.name
            surname = value.people.surname
        }
        welcomeLabel.text = "Welcome, \(name ?? "") \(surname ?? "")"
        exitButton.layer.cornerRadius = 6
    }

}

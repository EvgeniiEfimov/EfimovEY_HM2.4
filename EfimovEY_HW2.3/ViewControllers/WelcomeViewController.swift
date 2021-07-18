//
//  WelcomeViewController.swift
//  EfimovEY_HW2.3
//
//  Created by User on 13.07.2021.
//

import UIKit


class WelcomeViewController: UIViewController {
    
    var userWelcome: [User]?
    private var name = ""
    private var surname = ""
    private var image = ""
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var startImage: UIImageView!
    @IBOutlet weak var nameLabelString: UILabel!
    @IBOutlet weak var viewFrame: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = userWelcome else { return }
        for value in user {
            name = value.people.name
            surname = value.people.surname
            image = value.people.image.image1
            welcomeLabel.text = value.welcome
            

        }
        
        nameLabelString.text = "\(surname) \n    \(name)"
        exitButton.layer.cornerRadius = 5
        viewFrame.layer.cornerRadius = 5
        startImage.image = UIImage(named: image)
    }

}

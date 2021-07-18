//
//  ProfileViewController.swift
//  EfimovEY_HW2.3
//
//  Created by User on 16.07.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var nameLabelString: UILabel!
    @IBOutlet weak var surnameLabelString: UILabel!
    @IBOutlet weak var patronymicLabelString: UILabel!
    @IBOutlet weak var ageLabelInt: UILabel!
    @IBOutlet weak var cityLabelString: UILabel!
    @IBOutlet weak var textTV: UITextView!
    
    var image: String!
    
    var user: [User]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userProfile = user else { return }
        for value in userProfile {
            image = value.people.image.image2
            nameLabelString.text = value.people.name
            surnameLabelString.text = value.people.surname
            patronymicLabelString.text = value.people.patronymic
            ageLabelInt.text = String(value.people.age)
            cityLabelString.text = value.people.city
            textTV.text = value.people.text
                        }
        imageProfile.image = UIImage(named: image)
        }
    
}

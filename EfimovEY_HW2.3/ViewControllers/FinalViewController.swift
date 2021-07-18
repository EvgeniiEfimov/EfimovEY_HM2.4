//
//  FinalViewController.swift
//  EfimovEY_HW2.3
//
//  Created by User on 16.07.2021.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var imageIV3: UIImageView!
    @IBOutlet weak var imageIV4: UIImageView!
    @IBOutlet weak var imageIV5: UIImageView!
    
    var user: [User]?
    
    private var image3 = ""
    private var image4 = ""
    private var image5 = ""
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let arrayValueUser = user else { return }
        for value in arrayValueUser {
            image3 = value.people.image.image3
            image4 = value.people.image.image4
            image5 = value.people.image.image5
        }
        imageIV3.image = UIImage(named: image3)
        imageIV4.image = UIImage(named: image4)
        imageIV5.image = UIImage(named: image5)
      
    }
    

}

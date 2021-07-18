//
//  ViewController.swift
//  EfimovEY_HW2.3
//
//  Created by User on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameLoginTF: UITextField!
    @IBOutlet weak var passwordLoginTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    let myUser = User.examp()
    
    
    private var login: String?
    private var password: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 5
        
        for user in myUser {
            login = user.login
            password = user.password
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userWelcome = myUser
            } else if let navigationVC = viewController as? UINavigationController {
                let profileVC = navigationVC.topViewController
                    as! ProfileViewController
                profileVC.user = myUser
            }
        }
    }
    
    @IBAction func logIn() {
        for user in myUser {
            if nameLoginTF.text == user.login &&
                passwordLoginTF.text == user.password {
                performSegue(withIdentifier: "welcomeVC", sender: nil)
            }
        }
        toCallAlertAttention(title: "Attention",
                             message: "Incorrect username or password")
            passwordLoginTF.text = ""
    }
    
    @IBAction func helpButton(_ sender: UIButton) {
        sender.tag == 1 ? toCallAlertAttention(title: nil,
                                               message: login!) :
            toCallAlertAttention(title: nil, message: password!)
    }
    
    @IBAction func unwindGoToLoginVC (send: UIStoryboardSegue) {
        nameLoginTF.text = ""
        passwordLoginTF.text = ""
    }
    
    private func toCallAlertAttention( title: String?,  message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(
                            title: "Ok",
                            style: .cancel,
                            handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn (_ textFild: UITextField) -> Bool {
        if  textFild == nameLoginTF {
            passwordLoginTF.becomeFirstResponder()
        } else {
            logIn()
        }
        return true
    }
}


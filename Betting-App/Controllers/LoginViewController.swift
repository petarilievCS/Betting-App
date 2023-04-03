//
//  LoginViewController.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class LoginViewController: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    // MARK: - View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize UI
        Utilities.customizeButton(loginButton)
    }
    
    // MARK: - @IBActions
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
    }
    
}

// MARK: - Firebase methods
extension LoginViewController {
    // Logs in user to Firebase Auth
    func loginUser() {
        let email: String? = emailField.text
        let password: String? = passwordField.text
        Auth.auth().signIn(withEmail: email!, password: password!) { authResult, error in
            if error != nil {
                print("Error while logging in user: \(String(describing: error))")
            }
        }
    }
}

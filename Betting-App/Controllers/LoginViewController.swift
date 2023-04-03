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
        if validFields() {
            loginUser()
        }
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
                self.emailField.text = ""
                self.emailField.placeholder = "Invalid email or password"
                self.passwordField.text = ""
                self.passwordField.placeholder = "Invalid email or password"
                print("Error while logging in user: \(String(describing: error))")
            }
        }
    }
    
    // Validates email and password fields
    func validFields() -> Bool {
        var valid: Bool = true
        if emailField.text == "" {
            emailField.placeholder = "Enter your email"
            valid = false
        }
        if passwordField.text == "" {
            passwordField.placeholder = "Enter your password"
            valid = false
        }
        return valid
    }
}

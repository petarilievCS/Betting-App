//
//  RegisterViewController.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    var userBirthday: Date?
    
    // MARK: - @IBOutlets
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var firstNameField: CustomTextField!
    @IBOutlet weak var lastNameField: CustomTextField!
    @IBOutlet weak var emailField: CustomTextField!
    @IBOutlet weak var passwordField: CustomTextField!
    @IBOutlet weak var confirmPasswordField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize UI
        Utilities.customizeButton(registerButton)
    }
    
    // MARK: - @IBActions
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        registerUser()
    }
    
}

// MARK: - Firebase methods
extension RegisterViewController {
    // Registers user to Firebase Auth
    func registerUser() {
        let email: String? = emailField.text
        let password: String? = passwordField.text
        Auth.auth().createUser(withEmail: email!, password: password!) { authResult, error in
            if error != nil {
                print("Error registering user: \(String(describing: error))")
            }
        }
    }
}

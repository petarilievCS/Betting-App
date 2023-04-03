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
        if validFields() {
            registerUser()
        }
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
    
    // Validates that all the fields have correct information enetered
    func validFields() -> Bool {
        var valid: Bool = true
        if firstNameField.text == "" {
            firstNameField.placeholder = "Enter your first name"
            valid = false
        }
        if lastNameField.text == "" {
            lastNameField.placeholder = "Enter your last name"
            valid = false
        }
        if emailField.text == "" {
            emailField.placeholder = "Enter your email"
            valid = false
        }
        if !isValidEmail(emailField.text!) {
            emailField.text = ""
            emailField.placeholder = "Invalid email"
            valid = false
        }
        if passwordField.text == "" || confirmPasswordField.text == "" {
            resetPasswordFields(with: "Enter your password")
            valid = false
        }
        if passwordField.text != confirmPasswordField.text {
            resetPasswordFields(with: "Passwords must match")
            valid = false
        }
        if (passwordField.text!.count < 6 && passwordField.text!.count > 0) || (confirmPasswordField.text!.count < 6 && confirmPasswordField.text!.count > 0) {
            resetPasswordFields(with: "Invalid password")
            valid = false
        }
        return valid
    }
    
    // Resets password fields with given placeholder
    func resetPasswordFields(with placeholder: String) {
        passwordField.text = ""
        confirmPasswordField.text = ""
        passwordField.placeholder = placeholder
        confirmPasswordField.placeholder = placeholder
    }
    
    // Checks whether the given email is valid
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}

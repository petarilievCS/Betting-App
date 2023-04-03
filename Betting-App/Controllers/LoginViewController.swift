//
//  LoginViewController.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import UIKit

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



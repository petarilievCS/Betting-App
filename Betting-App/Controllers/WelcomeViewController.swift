//
//  ViewController.swift
//  Betting-App
//
//  Created by Petar Iliev on 26.3.23.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    
    // MARK: - View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utilities.customizeButton(loginButton)
        Utilities.customizeButton(registerButton)
        Utilities.customizeButton(guestButton)
    }
    
    // MARK: - @IBActions
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.Segues.welcomeToLogin, sender: self)
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.Segues.welcomeToBirthday, sender: self)
    }
    
    @IBAction func guestButtonPressed(_ sender: UIButton) {
        
    }
}

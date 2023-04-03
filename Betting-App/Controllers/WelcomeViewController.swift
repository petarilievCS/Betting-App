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
        
        customizeButton(loginButton)
        customizeButton(registerButton)
        customizeButton(guestButton)
    }
    
    // MARK: - @IBActions
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.Segues.welcomeToLogin, sender: self)
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.Segues.welcomeToRegister, sender: self)
    }
    
    @IBAction func guestButtonPressed(_ sender: UIButton) {
        
    }
    
    
}


// MARK: - Helper methods
extension WelcomeViewController {
    // Customizes button to improve design
    func customizeButton(_ button: UIButton) {
        button.layer.cornerRadius = 25.0
        button.titleLabel?.font = .systemFont(ofSize: 25.0, weight: .bold)
    }
}

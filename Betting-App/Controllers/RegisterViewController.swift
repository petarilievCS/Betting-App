//
//  RegisterViewController.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    // MARK: - @IBOutlets
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize UI
        Utilities.customizeButton(registerButton)
    }

}

//
//  BirthdayController.swift
//  Betting-App
//
//  Created by Petar Iliev on 3.4.23.
//

import UIKit

class BirthdayController: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    // MARK: - View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize UI
        Utilities.customizeButton(continueButton)
        datePicker.maximumDate = .now
    }
    
    // MARK: - @IBActions
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        // Check if user is over 18, alert if not
        if userAdult(datePicker.date) {
            performSegue(withIdentifier: K.Segues.birthdayToRegister, sender: self)
        } else {
            presentAgeAlert()
        }
    }
    
}

// MARK: - Navigation methods
extension BirthdayController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: RegisterViewController = segue.destination as! RegisterViewController
        destination.userBirthday = datePicker.date
    }
}

// MARK: - Validation methods
extension BirthdayController {
    // Checks if user is over 18
    func userAdult(_ userBirthday: Date) -> Bool {
        let age: DateComponents = Calendar.current.dateComponents([.year], from: userBirthday, to: .now)
        let years: Int = age.year!
        return years >= 18
    }
    
    // Presents an Alert VC stating the age limit of the app
    func presentAgeAlert() {
        let alert = UIAlertController(title: "Age Limit", message: "You must be over 18 in order to register.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}

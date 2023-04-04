//
//  File.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import Foundation

struct K {
    
    struct UI {
        static let cornerRadius: CGFloat = 25.0
        static let viewCornerRadius: CGFloat = 10.0
    }
    
    struct Segues {
        static let welcomeToLogin: String = "welcomeToLogin"
        static let welcomeToBirthday: String = "welcomeToBirthday"
        static let birthdayToRegister: String = "birthdayToRegister"
        static let welcomeToMain: String = "welcomeToMain"
        static let loginToMain: String = "loginToMain"
        static let registerToMain: String = "registerToMain"
        static let mainToBet: String = "mainToBet"
    }
}


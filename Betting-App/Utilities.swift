//
//  Utilities.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import UIKit

class Utilities {
    
    // MARK: - UI helper methods
    static func customizeButton(_ button: UIButton) {
        button.layer.cornerRadius = K.UI.cornerRadius
        button.titleLabel?.font = .systemFont(ofSize: 25.0, weight: .bold)
    }
    
    static func customizeView(_ view: UIView) {
        view.layer.cornerRadius = 10.0
    }
    
    static func customizeBubble(_ view: UIView) {
        view.layer.cornerRadius = K.UI.cornerRadius
    }
    
}

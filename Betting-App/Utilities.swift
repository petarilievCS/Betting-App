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
        view.layer.cornerRadius = K.UI.viewCornerRadius
        
    }
    
    static func customizeBubble(_ view: UIView) {
        view.layer.cornerRadius = K.UI.cornerRadius
    }
    
    static func customizeViews(_ leftView: UIView, _ rightView: UIView) {
        rightView.layer.cornerRadius = K.UI.viewCornerRadius
        rightView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        leftView.layer.cornerRadius = K.UI.viewCornerRadius
        leftView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
    }
    
    static func customizeButtons(_ leftButton: UIButton, _ rightButton: UIButton) {
        rightButton.layer.cornerRadius = K.UI.viewCornerRadius
        rightButton.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        leftButton.layer.cornerRadius = K.UI.viewCornerRadius
        leftButton.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
    }
    
}

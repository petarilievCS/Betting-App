//
//  PaddedTextField.swift
//  Betting-App
//
//  Created by Petar Iliev on 2.4.23.
//

import UIKit

// Custom text field 
class CustomTextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 5)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        self.layer.cornerRadius = K.UI.cornerRadius
        self.layer.masksToBounds = true
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}

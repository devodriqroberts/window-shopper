//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Devodriq Roberts on 9/18/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizedTextField()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizedTextField()
    }
    
    func customizedTextField() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let placeHolder = placeholder {
            let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}

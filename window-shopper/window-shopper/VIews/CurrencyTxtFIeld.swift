//
//  CurrencyTxtFIeld.swift
//  window-shopper
//
//  Created by training on 19.07.2018.
//  Copyright © 2018 Developers. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtFIeld: UITextField {

    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2462007705)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) //white ( with color Literal)
        }
    }

    override func prepareForInterfaceBuilder() {
        customizeView ()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView ()
    }
}

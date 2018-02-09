//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Greg Davidson on 2/8/18.
//  Copyright © 2018 Greg Davidson. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 10, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.9009953997, green: 0.9009953997, blue: 0.9009953997, alpha: 0.8013966182)
        currencyLabel.textAlignment = NSTextAlignment.center
        currencyLabel.textColor = #colorLiteral(red: 0.3034779505, green: 0.3034779505, blue: 0.3034779505, alpha: 1)
        currencyLabel.layer.cornerRadius = 3.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        
        addSubview(currencyLabel)
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        customizeView()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = NSTextAlignment.center
        
        clipsToBounds = true
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7496789384)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
    }

}

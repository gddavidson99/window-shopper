//
//  ViewController.swift
//  window-shopper
//
//  Created by Greg Davidson on 2/8/18.
//  Copyright © 2018 Greg Davidson. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var wageTxt: CurrencyTextField!
    @IBOutlet var priceTxt: CurrencyTextField!
    @IBOutlet var resultLbl: UILabel!
    @IBOutlet var hoursLbl: UILabel!
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        hideLabels()
        
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
    private lazy var calcBtn : UIButton = {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        button.backgroundColor = #colorLiteral(red: 1, green: 0.6376426949, blue: 0.1907585032, alpha: 1)
        button.setTitle("Calculate", for: UIControlState.normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControlState.normal)
        button.addTarget(self, action: #selector(MainViewController.calculate), for: UIControlEvents.touchUpInside)
        
        return button
        
    }()
    
    @objc func calculate() {
        
        if let wageText = wageTxt.text, let priceText = priceTxt.text {
            
            if let wage = Double(wageText), let price = Double(priceText) {
                
                view.endEditing(true)
                
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                
            }
            
        }
        
    }
    
    func hideLabels() {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hideLabels()
        
    }

}


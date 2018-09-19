//
//  ViewController.swift
//  window-shopper
//
//  Created by Devodriq Roberts on 9/18/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var hourlyWageTextField: CurrencyTextField!
    
    @IBOutlet weak var itemPriceTextField: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calculateButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        hourlyWageTextField.inputAccessoryView = calculateButton
        itemPriceTextField.inputAccessoryView = calculateButton
    }
    
    @objc func calculate() {
        guard let hourlyWageText = hourlyWageTextField.text else {return}
        guard let itemPriceText = itemPriceTextField.text else {return}
        
        if let hourlyWageText = Double(hourlyWageText), let itemPriceText = Double(itemPriceText) {
            view.endEditing(true)
            resultLabel.isHidden = false
            hoursLabel.isHidden = false
            resultLabel.text = "\(Wage.getHours(forWage: hourlyWageText, andPrice: itemPriceText))"
        }
    }

    @IBAction func clearButtonPressed(_ sender: UIButton) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        hourlyWageTextField.text = ""
        itemPriceTextField.text = ""
    }
    


}


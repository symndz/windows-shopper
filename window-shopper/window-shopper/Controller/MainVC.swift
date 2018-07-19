//
//  ViewController.swift
//  window-shopper
//
//  Created by training on 19.07.2018.
//  Copyright © 2018 Developers. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtFIeld!
    @IBOutlet weak var priceTxt: CurrencyTxtFIeld!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursStringLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60
        ))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.setTitle("CALCULATE", for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        // for: when button is pressed
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hoursStringLbl.isHidden = true
        
    }

    @objc func calculate() {
        print("we got here")
        //local variable defined example
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursStringLbl.isHidden = false
                resultLbl.text = "\(WageModel.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursStringLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}


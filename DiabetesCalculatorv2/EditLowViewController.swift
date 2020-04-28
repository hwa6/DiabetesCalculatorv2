//
//  EditLowViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/27/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class EditLowViewController: UIViewController {

    @IBOutlet weak var currentLowLabel: UILabel!
    
    
    @IBOutlet weak var newLowField: UITextField!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.hideKeyboardOnTap()
        super.viewWillAppear(true)
        currentLowLabel.text = String( EditProfileViewController.GlobalVariable.currentLow) + " mg/dL"
    }
    
    @IBAction func saveChanges(_ sender: UIButton) {
        if(newLowField.text == ""){
                  
              }
              else{
                  EditProfileViewController.GlobalVariable.currentLow = Double(newLowField.text!)!
              }
    }
    
    
    
}

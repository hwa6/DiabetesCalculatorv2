//
//  EditTargetViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/26/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class EditTargetViewController: UIViewController {

    
    @IBOutlet weak var currentTargetLabel: UILabel!
    
    @IBOutlet weak var newTargetField: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.hideKeyboardOnTap()
        super.viewWillAppear(true)
        currentTargetLabel.text = String( EditProfileViewController.GlobalVariable.currentTarget ) + " mg/dL"
    }
        
        

        
    
    
    @IBAction func saveChanges(_ sender: UIButton) {
        if(newTargetField.text == ""){
            
        }
        else{
            EditProfileViewController.GlobalVariable.currentTarget = Double(newTargetField.text!)!
        }
    }
    

}

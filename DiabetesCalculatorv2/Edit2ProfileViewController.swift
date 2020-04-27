//
//  Edit2ProfileViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/25/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class Edit2ProfileViewController: UIViewController {
    
    @IBOutlet weak var profile2NameVar: UITextField!
    
    @IBOutlet weak var correction2FactorVar: UITextField!
    
    @IBOutlet weak var carb2RatioVar: UITextField!
    
    //adds values from screen to respective arrays
    @IBAction func saveChanges(_ sender: Any) {
        if (EditProfileViewController.GlobalVariable.profileArray.isEmpty == true){ //probs shouldnt be triggered at least not yet
            EditProfileViewController.GlobalVariable.profileArray.append(profile2NameVar.text!)
            
            print("if condition met")
           
        }
        else {
           
            EditProfileViewController.GlobalVariable.profileArray[2] = profile2NameVar.text!
            EditProfileViewController.GlobalVariable.correctionArray[2] = Double (correction2FactorVar.text!)!
            EditProfileViewController.GlobalVariable.carbArray[2] = Double (carb2RatioVar.text!)!
            print("else statement met")
            
        }
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = false
        super.viewDidLoad()
        self.hideKeyboardOnTap() 
    }
    
    
    //passes edited values to update profile
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ProfileListViewController
        destVC.passed2DataString = profile2NameVar.text!
        destVC.passed2CFString = correction2FactorVar.text!
        destVC.passed2CRString = carb2RatioVar.text!
    }
    
   

}

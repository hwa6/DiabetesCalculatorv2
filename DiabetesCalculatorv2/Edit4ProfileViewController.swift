//
//  Edit4ProfileViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/26/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class Edit4ProfileViewController: UIViewController {
    
    @IBOutlet weak var profile4NameVar: UITextField!
    
    @IBOutlet weak var correction4FactorVar: UITextField!
    
    @IBOutlet weak var carb4RatioVar: UITextField!
    
    @IBAction func saveChanges(_ sender: UIButton) {
        if (EditProfileViewController.GlobalVariable.profileArray.isEmpty == true){ //probs shouldnt be triggered at least not yet
            EditProfileViewController.GlobalVariable.profileArray.append(profile4NameVar.text!)
            
            print("if condition met")
           
        }
        else {
           
            EditProfileViewController.GlobalVariable.profileArray[4] = profile4NameVar.text!
            EditProfileViewController.GlobalVariable.correctionArray[4] = Double (correction4FactorVar.text!)!
            EditProfileViewController.GlobalVariable.carbArray[4] = Double (carb4RatioVar.text!)!
            print("else statement met")
            
        }
    }
    

    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = false
        super.viewDidLoad()
        self.hideKeyboardOnTap()

      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ProfileListViewController
        destVC.passed4DataString = profile4NameVar.text!
        destVC.passed4CFString = correction4FactorVar.text!
        destVC.passed4CRString = carb4RatioVar.text!
    }
    



}

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
        if(profile2NameVar.text == ""){
                EditProfileViewController.GlobalVariable.profileArray[2] = "Profile 2"
            }
            else{
                EditProfileViewController.GlobalVariable.profileArray[2] = profile2NameVar.text!
            }
            
            if(correction2FactorVar.text == ""){
                EditProfileViewController.GlobalVariable.correctionArray[2] = Double ("0")!
            }
            else{
                EditProfileViewController.GlobalVariable.correctionArray[2] = Double (correction2FactorVar.text!) ?? 0
            }
            
            if(carb2RatioVar.text == ""){
                EditProfileViewController.GlobalVariable.carbArray[2] = Double ("0")!
            }
            else{
                EditProfileViewController.GlobalVariable.carbArray[2] = Double (carb2RatioVar.text!) ?? 0
            }
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.profileArray, forKey: "savedNameArray")
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.correctionArray, forKey: "savedCorrectionArray")
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.carbArray, forKey: "savedCarbArray")
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.activeIndex, forKey: "savedIndex")
            UserDefaults.standard.synchronize()
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
        destVC.passed2CFString = Double (correction2FactorVar.text!) ?? 0
        destVC.passed2CRString = Double (carb2RatioVar.text!) ?? 0
    }
    
   

}

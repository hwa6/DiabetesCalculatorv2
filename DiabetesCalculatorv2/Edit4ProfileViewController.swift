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
        if(profile4NameVar.text == ""){
                EditProfileViewController.GlobalVariable.profileArray[4] = "Profile 4"
            }
            else{
                EditProfileViewController.GlobalVariable.profileArray[4] = profile4NameVar.text!
            }
            
            if(correction4FactorVar.text == ""){
                EditProfileViewController.GlobalVariable.correctionArray[4] = Double ("0")!
            }
            else{
                EditProfileViewController.GlobalVariable.correctionArray[4] = Double (correction4FactorVar.text!) ?? 0
            }
            
            if(carb4RatioVar.text == ""){
                EditProfileViewController.GlobalVariable.carbArray[4] = Double ("0")!
            }
            else{
            EditProfileViewController.GlobalVariable.carbArray[4] = Double (carb4RatioVar.text!) ?? 0
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ProfileListViewController
        destVC.passed4DataString = profile4NameVar.text!
        destVC.passed4CFString = Double (correction4FactorVar.text!) ?? 0
        destVC.passed4CRString =  Double (carb4RatioVar.text!) ?? 0
    }
    



}

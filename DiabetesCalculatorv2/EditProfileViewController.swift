//
//  EditViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/22/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var profileNameVar: UITextField!
    
    @IBOutlet weak var correctionFactorVar: UITextField!
    
    @IBOutlet weak var carbRatioVar: UITextField!
    
    
    //adds values from screen to respective arrays
    @IBAction func saveChanges(_ sender: UIButton) {
        if(profileNameVar.text == ""){
                EditProfileViewController.GlobalVariable.profileArray[1] = "Profile 1"
            }
            else{
                EditProfileViewController.GlobalVariable.profileArray[1] = profileNameVar.text!
            }
            
            if(correctionFactorVar.text == ""){
                EditProfileViewController.GlobalVariable.correctionArray[1] = Double ("0")!
            }
            else{
                EditProfileViewController.GlobalVariable.correctionArray[1] = Double (correctionFactorVar.text!) ?? 0
            }
            
            if(carbRatioVar.text == ""){
                EditProfileViewController.GlobalVariable.carbArray[1] = Double ("0")!
            }
            else{
            EditProfileViewController.GlobalVariable.carbArray[1] = Double (carbRatioVar.text!) ?? 0
            }
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.profileArray, forKey: "savedNameArray")
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.correctionArray, forKey: "savedCorrectionArray")
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.carbArray, forKey: "savedCarbArray")
            UserDefaults.standard.set(EditProfileViewController.GlobalVariable.activeIndex, forKey: "savedIndex")
            UserDefaults.standard.synchronize()
            //resetDefaults()
        }
    
    func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
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
        destVC.passedDataString = profileNameVar.text!
        destVC.passedCFString = Double (correctionFactorVar.text!) ?? 0
        destVC.passedCRString = Double (carbRatioVar.text!) ?? 0
    }
    
    struct GlobalVariable { //struct global variable thing, used throughout app
        //var profileArray = [String](arrayLiteral: "No Profile Set Active","Profile 1","Profile 2","Profile 3","Profile 4")
        static var profileArray = UserDefaults.standard.stringArray(forKey: "savedNameArray") ?? [String](arrayLiteral: "No Profile Set Active","Profile 1","Profile 2","Profile 3","Profile 4")
        static var correctionArray = UserDefaults.standard.array(forKey: "savedCorrectionArray") as? [Double] ?? [Double](arrayLiteral: 0,0,0,0,0)
        static var carbArray = UserDefaults.standard.array(forKey: "savedCarbArray") as? [Double] ?? [Double](arrayLiteral: 0,0,0,0,0)
        static var activeIndex = UserDefaults.standard.integer(forKey: "savedIndex")
        static var currentTarget = UserDefaults.standard.double(forKey: "savedTarget")
        static var currentLow = UserDefaults.standard.double(forKey: "savedLow")
            
       }
    
    
    

}
//extension to close keyboard if screen is tapped
extension UIViewController {
    func hideKeyboardOnTap() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

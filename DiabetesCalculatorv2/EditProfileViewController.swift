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
        if (GlobalVariable.profileArray.isEmpty == true){ //probs shouldnt be triggered at least not yet
            GlobalVariable.profileArray.append(profileNameVar.text!)
            
            print("if condition met")
           
        }
        else {
           
            GlobalVariable.profileArray[1] = profileNameVar.text!
            GlobalVariable.correctionArray[1] = Double (correctionFactorVar.text!)!
            GlobalVariable.carbArray[1] = Double (carbRatioVar.text!)!
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
        destVC.passedDataString = profileNameVar.text!
        destVC.passedCFString = correctionFactorVar.text!
        destVC.passedCRString = carbRatioVar.text!
    }
    
    struct GlobalVariable { //struct global variable thing, used throughout app
        static var profileArray = [String](arrayLiteral: "0","no active profile","two","three","four")
        static var correctionArray = [Double](arrayLiteral: 0,0,2,3,4)
        static var carbArray = [Double](arrayLiteral: 0,0,0,0,0)
        static var activeIndex = Int(1)
        static var currentTarget = Double(0)
            
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

//
//  ProfileListController.swift
//  DiabetesCalculatorv2
//
//  Created by Nicole Miller on 4/17/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class ProfileListViewController: UIViewController{

    //target and low BS label
    @IBOutlet weak var currentTarget: UILabel!
    @IBOutlet weak var currentLow: UILabel!
    
    //Profile 1 variables
    @IBOutlet weak var profile1name: UILabel!
    @IBOutlet weak var cf1name: UILabel!
    @IBOutlet weak var cr1name: UILabel!
    var passedDataString = EditProfileViewController.GlobalVariable.profileArray[1]
    var passedCFString = EditProfileViewController.GlobalVariable.correctionArray[1]
    var passedCRString = EditProfileViewController.GlobalVariable.carbArray[1]
    
    //Profile 2 variables
    @IBOutlet weak var profile2name: UILabel!
    @IBOutlet weak var cf2name: UILabel!
    @IBOutlet weak var cr2name: UILabel!
    var passed2DataString = EditProfileViewController.GlobalVariable.profileArray[2]
    var passed2CFString = EditProfileViewController.GlobalVariable.correctionArray[2]
    var passed2CRString = EditProfileViewController.GlobalVariable.carbArray[2]
    
    //Profile 3 variables
    @IBOutlet weak var profile3name: UILabel!
    @IBOutlet weak var cf3name: UILabel!
    @IBOutlet weak var cr3name: UILabel!
    var passed3DataString = EditProfileViewController.GlobalVariable.profileArray[3]
    var passed3CFString = EditProfileViewController.GlobalVariable.correctionArray[3]
    var passed3CRString = EditProfileViewController.GlobalVariable.carbArray[3]
    
    //Profile 4 variables
    @IBOutlet weak var profile4name: UILabel!
    @IBOutlet weak var cf4name: UILabel!
    @IBOutlet weak var cr4name: UILabel!
    var passed4DataString = EditProfileViewController.GlobalVariable.profileArray[4]
    var passed4CFString = EditProfileViewController.GlobalVariable.correctionArray[4]
    var passed4CRString = EditProfileViewController.GlobalVariable.carbArray[4]
    
    //Outline Labels
    @IBOutlet weak var outline1: UILabel!
    @IBOutlet weak var outline2: UILabel!
    @IBOutlet weak var outline3: UILabel!
    @IBOutlet weak var outline4: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        super.viewWillAppear(true)
        self.currentTarget.text = "Current Target : " + String( EditProfileViewController.GlobalVariable.currentTarget) + "mg/dL"
        self.currentLow.text = "Current Low Threshold: " + String( EditProfileViewController.GlobalVariable.currentLow) + "mg/dL"
        self.profile1name.text = passedDataString
        self.cf1name.text = String (passedCFString)
        self.cr1name.text = String (passedCRString)
        self.profile2name.text = passed2DataString
        self.cf2name.text = String (passed2CFString)
        self.cr2name.text = String (passed2CRString)
        self.profile3name.text = passed3DataString
        self.cf3name.text = String (passed3CFString)
        self.cr3name.text = String (passed3CRString)
        self.profile4name.text = passed4DataString
        self.cf4name.text = String (passed4CFString)
        self.cr4name.text = String (passed4CRString)
        
        //sets active index highlighted
        for i in 1 ... 4 {
            if(EditProfileViewController.GlobalVariable.activeIndex == i){
                if (i == 1){
                    outline1.layer.borderWidth = 2
                    outline1.layer.borderColor = UIColor.systemGray.cgColor
                }
                else if (i == 2){
                    outline2.layer.borderWidth = 2
                    outline2.layer.borderColor = UIColor.systemGray.cgColor
                }
                else if (i == 3){
                    outline3.layer.borderWidth = 2
                    outline3.layer.borderColor = UIColor.systemGray.cgColor
                }
                else if (i == 4){
                    outline4.layer.borderWidth = 2
                    outline4.layer.borderColor = UIColor.systemGray.cgColor
                }
            }
        }
    }
    
    //buttons to select active profile
    //sets active outline
    @IBAction func makeFirstActive(_ sender: UIButton) {
        outline1.layer.borderWidth = 2
        outline1.layer.borderColor = UIColor.systemGray.cgColor
        outline2.layer.borderWidth = 0
        outline3.layer.borderWidth = 0
        outline4.layer.borderWidth = 0
        EditProfileViewController.GlobalVariable.activeIndex=1
        UserDefaults.standard.set(EditProfileViewController.GlobalVariable.activeIndex, forKey: "savedIndex")
        UserDefaults.standard.synchronize()
    }
    @IBAction func makeSecondActive(_ sender: UIButton) {
        outline2.layer.borderWidth = 2
        outline2.layer.borderColor = UIColor.systemGray.cgColor
        outline1.layer.borderWidth = 0
        outline3.layer.borderWidth = 0
        outline4.layer.borderWidth = 0
        EditProfileViewController.GlobalVariable.activeIndex=2
        UserDefaults.standard.set(EditProfileViewController.GlobalVariable.activeIndex, forKey: "savedIndex")
        UserDefaults.standard.synchronize()
    }
    
    @IBAction func makeThirdActive(_ sender: UIButton) {
        outline3.layer.borderWidth = 2
        outline3.layer.borderColor = UIColor.systemGray.cgColor
        outline1.layer.borderWidth = 0
        outline2.layer.borderWidth = 0
        outline4.layer.borderWidth = 0
        EditProfileViewController.GlobalVariable.activeIndex=3
        UserDefaults.standard.set(EditProfileViewController.GlobalVariable.activeIndex, forKey: "savedIndex")
        UserDefaults.standard.synchronize()
    }
    @IBAction func makeFourthActive(_ sender: UIButton) {
        outline4.layer.borderWidth = 2
        outline4.layer.borderColor = UIColor.systemGray.cgColor
        outline1.layer.borderWidth = 0
        outline2.layer.borderWidth = 0
        outline3.layer.borderWidth = 0
        EditProfileViewController.GlobalVariable.activeIndex=4
        UserDefaults.standard.set(EditProfileViewController.GlobalVariable.activeIndex, forKey: "savedIndex")
        UserDefaults.standard.synchronize()
    }
    
    
    @IBAction func unwindToEditProfile(_ sender: UIStoryboardSegue){} //from tutorial, no code inside


}


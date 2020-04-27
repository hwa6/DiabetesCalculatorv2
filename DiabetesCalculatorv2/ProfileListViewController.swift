//
//  ProfileListController.swift
//  DiabetesCalculatorv2
//
//  Created by Nicole Miller on 4/17/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class ProfileListViewController: UIViewController{

    //target BS label
    @IBOutlet weak var currentTarget: UILabel!
    
    //Profile 1 variables
    @IBOutlet weak var profile1name: UILabel!
    @IBOutlet weak var cf1name: UILabel!
    @IBOutlet weak var cr1name: UILabel!
    var passedDataString = "NameBefore"
    var passedCFString = "0"
    var passedCRString = "0"
    
    //Profile 2 variables
    @IBOutlet weak var profile2name: UILabel!
    @IBOutlet weak var cf2name: UILabel!
    @IBOutlet weak var cr2name: UILabel!
    var passed2DataString = "Name2Before"
    var passed2CFString = "00"
    var passed2CRString = "00"
    
    //Profile 3 variables
    //NEED TO CONNECT LABELS
    @IBOutlet weak var profile3name: UILabel!
    @IBOutlet weak var cf3name: UILabel!
    @IBOutlet weak var cr3name: UILabel!
    var passed3DataString = "Name3Before"
    var passed3CFString = "000"
    var passed3CRString = "000"
    
    //Profile 4 variables
    //NEED TO CONNECT LABELS
    @IBOutlet weak var profile4name: UILabel!
    @IBOutlet weak var cf4name: UILabel!
    @IBOutlet weak var cr4name: UILabel!
    var passed4DataString = "Name4Before"
    var passed4CFString = "0000"
    var passed4CRString = "0000"
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        super.viewWillAppear(true)
        self.currentTarget.text = "Current Target Blood Sugar: " + String( EditProfileViewController.GlobalVariable.currentTarget)
        self.profile1name.text = passedDataString
        self.cf1name.text = passedCFString
        self.cr1name.text = passedCRString
        self.profile2name.text = passed2DataString
        self.cf2name.text = passed2CFString
        self.cr2name.text = passed2CRString
        self.profile3name.text = passed3DataString
        self.cf3name.text = passed3CFString
        self.cr3name.text = passed3CRString
        self.profile4name.text = passed4DataString
        self.cf4name.text = passed4CFString
        self.cr4name.text = passed4CRString
    }
    
    //buttons to select active profile
    @IBAction func makeFirstActive(_ sender: UIButton) {
        EditProfileViewController.GlobalVariable.activeIndex=1
    }
    @IBAction func makeSecondActive(_ sender: UIButton) {
        EditProfileViewController.GlobalVariable.activeIndex=2
    }
    
    @IBAction func makeThirdActive(_ sender: UIButton) {
        EditProfileViewController.GlobalVariable.activeIndex=3
    }
    @IBAction func makeFourthActive(_ sender: UIButton) {
        EditProfileViewController.GlobalVariable.activeIndex=4
    }
    
    
    @IBAction func unwindToEditProfile(_ sender: UIStoryboardSegue){} //from tutorial, no code inside


}


//
//  ProfileListController.swift
//  DiabetesCalculatorv2
//
//  Created by Nicole Miller on 4/17/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class ProfileListViewController: UIViewController{

  
    
    
    @IBOutlet weak var profile1name: UILabel!
    
   
    @IBOutlet weak var cf1name: UILabel!
    
    @IBOutlet weak var cr1name: UILabel!
    
    
    var passedDataString = "NameBefore"
    var passedCFString = "0"
    var passedCRString = "0"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.profile1name.text = passedDataString
        self.cf1name.text = passedCFString
        self.cr1name.text = passedCRString
    }
    
    
    
    @IBAction func unwindToEditProfile(_ sender: UIStoryboardSegue){} //from tutorial, no code inside


}


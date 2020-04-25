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
    
    var passedDataString = "NameBefore"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.profile1name.text = passedDataString
        

    }
    
    
    
    @IBAction func unwindToEditProfile(_ sender: UIStoryboardSegue){} //from tutorial, no code inside


}


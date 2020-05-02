//
//  FirstViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Nicole Miller on 4/17/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    //text fields for current info
    @IBOutlet weak var bloodSugar: UITextField!
    @IBOutlet weak var carbTotal: UITextField!
    //label for output
    @IBOutlet weak var outputDisplay: UILabel!
    //vars for calculating dose
    var carbRatio = 0.0
    var correctionFactor = 0.0
    var bloodSugarVar = 0.0
    var carbTotalVar = 0.0
    var output=0.0
    var outputFormatted = " "
    var target = EditProfileViewController.GlobalVariable.currentTarget
    
    
    //button function for calculating dose
    @IBAction func calculateButton(_ sender: Any) {
        //gets current target
        var low = EditProfileViewController.GlobalVariable.currentLow
        var index = EditProfileViewController.GlobalVariable.activeIndex
        var target = EditProfileViewController.GlobalVariable.currentTarget
        //gets current profile info
        correctionFactor = EditProfileViewController.GlobalVariable.correctionArray[EditProfileViewController.GlobalVariable.activeIndex]
        carbRatio = EditProfileViewController.GlobalVariable.carbArray[EditProfileViewController.GlobalVariable.activeIndex]
        
        //gets entered info
        if (bloodSugar.text == ""){
            bloodSugarVar = target
        }
        else{
        bloodSugarVar = Double(bloodSugar.text!)!
        }
        
        if (carbTotal.text == ""){
            carbTotalVar=0
        }
        else{
            carbTotalVar = Double(carbTotal.text!)!
        }
        
        
        
        if(target == 0 || carbRatio == 0 || correctionFactor == 0 || index == 0 || low == 0){
            if(index == 0){
                outputDisplay.text = "Profile Never Selected"
            }
            else if(correctionFactor == 0){
                outputDisplay.text = "Correction Factor Set to 0"
            }
            else if(carbRatio == 0){
                outputDisplay.text = "Carb Ratio Set to 0"
            }
            else if(low == 0){
                outputDisplay.text = "Low threshold set to 0"
            }
            else{
                outputDisplay.text = "Target set to 0"
            }
            
        }
        
        else{
            output = ((bloodSugarVar-target)/(correctionFactor))+(carbTotalVar/carbRatio)
            if(bloodSugarVar < EditProfileViewController.GlobalVariable.currentLow){
                outputDisplay.text = "Low, Consume Carbs"
            }
            else if(output<0){
                outputDisplay.text = "Insulin Not Recommended"
            }
            else{
            outputFormatted = String(format: "%.1f", output)
            outputDisplay.text = String (outputFormatted) + "u"
            }
        }
        
        
        
            
       
        
        
        
    }
    
    
    
    
    
    //labels for displaying current profile
    @IBOutlet weak var currentNameLabel: UILabel!
    @IBOutlet weak var currentCorrectionLabel: UILabel!
    @IBOutlet weak var currentCarbLabel: UILabel!
    
    //variables for displaying current profile
    var currentName = " "
    var currentCorrection = " "
    var currentCarb = " "
    
    //view function. VARS WILL EVENTUALLY NEED TO BE ASSIGNED TO 0
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        
        currentName = EditProfileViewController.GlobalVariable.profileArray[EditProfileViewController.GlobalVariable.activeIndex]
        currentCorrection = String (EditProfileViewController.GlobalVariable.correctionArray[EditProfileViewController.GlobalVariable.activeIndex])
        currentCarb = String (EditProfileViewController.GlobalVariable.carbArray[EditProfileViewController.GlobalVariable.activeIndex])
        
        //displays profile name
        currentNameLabel.text = currentName
        
        
    }
    
  
    
   


}

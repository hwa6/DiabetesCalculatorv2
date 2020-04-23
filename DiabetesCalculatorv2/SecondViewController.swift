//
//  SecondViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Nicole Miller on 4/17/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{

    @IBAction func buttonPress(_ sender: Any) {
        performSegue(withIdentifier: "editSegue", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


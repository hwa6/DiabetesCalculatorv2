//
//  Food.swift
//  FoodID3.0
//
//  Created by Henry Anderson on 10/23/20.
//

import UIKit

class Food {
    var name: String
    var real_name: String
    var carb_min: Int
    var carb_max: Int
    var unit: String
    
    init(name:String, real_name:String, carb_min:Int, carb_max:Int, unit:String){
        self.name = name
        self.real_name = real_name
        self.carb_min = carb_min
        self.carb_max = carb_max
        self.unit = unit
    }
    


}

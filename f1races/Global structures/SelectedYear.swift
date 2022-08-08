//
//  SelectedYear.swift
//  f1races
//
//  Created by Shreya Raj on 05/08/22.
//

import Foundation

struct SelectedYear {
    var yearSelectedFromPicker : Int?//default year value given
    
    mutating func updateYear(year:Int){
        self.yearSelectedFromPicker = year
    }
}

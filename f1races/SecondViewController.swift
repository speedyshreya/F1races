//
//  SecondViewController.swift
//  f1races
//
//  Created by Shreya Raj on 02/08/22.
//

import UIKit


class SecondViewController: UIViewController {
    
    @IBOutlet weak var YearLabelTest: UILabel!
    @IBOutlet weak var YearPicker: UIPickerView!
    var pickerData: [Int] = [Int]()
    
    var selectedYear = SelectedYear()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Page"
        setupView()
        self.reloadInputViews()
    }
    
    func setupView() {
        for i in 1950...2022{
            pickerData.append(i)
        }
        // pickerData = [1999, 2000, 2001, 2002, 2003]
        self.YearPicker.delegate = self
        self.YearPicker.dataSource = self
    }
    
}

extension SecondViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(pickerData[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedYear.updateYear(year: pickerData[pickerView.selectedRow(inComponent: 0)])
    
    }
}




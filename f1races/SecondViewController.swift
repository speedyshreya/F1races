//
//  SecondViewController.swift
//  f1races
//
//  Created by Shreya Raj on 02/08/22.
//

import UIKit


class SecondViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    //129, 157, 119
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var pickYearTitleLabel: UITextField!
   // @IBOutlet weak var YearLabelTest: UILabel!
    @IBOutlet weak var YearPicker: UIPickerView!
    var pickerData: [Int] = [Int]()
    
    var selectedYear = SelectedYear()
    
    
    
    @IBAction func actionNext(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Page"
        self.view.backgroundColor = UIColor(displayP3Red: 197.0/255.0, green: 223.0/255.0, blue: 239.0/255.0, alpha: 1.0)
        pickYearTitleLabel.textColor = UIColor(displayP3Red: 129.0/255.0, green: 157.0/255.0, blue: 119.0/255.0, alpha: 1.0)
        welcomeLabel.textColor = UIColor(displayP3Red: 191.0/255.0, green: 65.0/255.0, blue: 39.0/255.0, alpha: 1.0)
        setupView()
        self.reloadInputViews()
        //self.view.backgroundColor
    }
    
    func setupView() {
        for i in 1950...2022{
            pickerData.append(i)
        }
        selectedYear.updateYear(year: pickerData[0])

        // pickerData = [1999, 2000, 2001, 2002, 2003]
        self.YearPicker.delegate = self
        self.YearPicker.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThirdViewController" {
            if let destinationVC = segue.destination as? ThirdViewController {
                destinationVC.year = selectedYear.yearSelectedFromPicker!
            }
        }
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




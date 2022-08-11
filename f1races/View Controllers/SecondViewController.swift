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
    
    @IBOutlet weak var welcomeLabel: UITextField!
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
        setUpUI()
        setupView()
        self.reloadInputViews()
    }
    
    func setUpUI(){
        pickYearTitleLabel.textColor = UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        pickYearTitleLabel.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        welcomeLabel.textColor = UIColor(displayP3Red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        welcomeLabel.backgroundColor = UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
    }
    func setupView() {
        for i in 1950...2022{
            pickerData.append(i)
        }
        selectedYear.updateYear(year: pickerData[0])
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




//
//  ThirdViewController.swift
//  f1races
//
//  Created by Shreya Raj on 04/08/22.
//

import UIKit

class ThirdViewController: UIViewController {
    var year: Int = 0 //default
   
    @IBOutlet weak var tapToKnowMoreLabel: UILabel!
    @IBOutlet weak var races: UIButton!
    @IBOutlet weak var constructors: UIButton!
    @IBOutlet weak var drivers: UIButton!
    @IBOutlet weak var YearLabelHeading: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third page"
        setUpUI()
       
    }
    
    func setUpUI(){
        YearLabelHeading.textColor = UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        YearLabelHeading.backgroundColor =  UIColor(displayP3Red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        tapToKnowMoreLabel.textColor =
        UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        tapToKnowMoreLabel.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        tapToKnowMoreLabel.layer.cornerRadius = 10
        YearLabelHeading.layer.cornerRadius = 10
        races.backgroundColor = UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        constructors.backgroundColor = UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        drivers.backgroundColor = UIColor(displayP3Red: 241.0/255.0, green: 74.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        YearLabelHeading.text = "For the year \(year)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FourthViewController" {
            if let destinationVC = segue.destination as? FourthViewController {
                destinationVC.year = year ?? 0
            }
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //        print(self.navigationController?.viewControllers)
        //        let newString = f1RacesUrl.replacingOccurrences(of: "2021", with: "2022")
        //        let newString2 = f1RacesUrl2 + "\("2021").json"
        
     
    }
}

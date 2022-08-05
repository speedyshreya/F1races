//
//  ThirdViewController.swift
//  f1races
//
//  Created by Shreya Raj on 04/08/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var YearLabelHeading: UILabel!
    @IBAction func actionPush(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "MyViewController") as! ViewController
        self.navigationController?.pushViewController(resultViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third page"
        // Do any additional setup after loading the view.
       
        YearLabelHeading.text = "For the year \(SecondViewController().selectedYear.yearSelectedFromPicker)"
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //        print(self.navigationController?.viewControllers)
        //        let newString = f1RacesUrl.replacingOccurrences(of: "2021", with: "2022")
        //        let newString2 = f1RacesUrl2 + "\("2021").json"
        APIManager.shareInstance.getF1RaceInformation { myData, Status in
            if Status == true {
                // load the table
            } else {
                //show alert
            }
        }
        
        
        
        
    }
}

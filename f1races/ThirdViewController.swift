//
//  ThirdViewController.swift
//  f1races
//
//  Created by Shreya Raj on 04/08/22.
//

import UIKit

class ThirdViewController: UIViewController {
    var year: Int = 0  //default
   
    @IBOutlet weak var races: UIButton!
    @IBOutlet weak var constructors: UIButton!
    @IBOutlet weak var drivers: UIButton!
    @IBOutlet weak var YearLabelHeading: UILabel!
//    @IBAction func actionPush(_ sender: Any) {
//        
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "MyViewController") as! ViewController
//        self.navigationController?.pushViewController(resultViewController, animated: true)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third page"
        // Do any additional setup after loading the view.
//        if let vc = self.navigationController?.viewControllers[(self.navigationController?.viewControllers.count)!-2] as? SecondViewController, let text = vc.selectedYear.yearSelectedFromPicker {
//            YearLabelHeading.text = "For the year \(text)"
//        }
        
        YearLabelHeading.text = "For the year \(year)"

        
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "FourthViewController" {
//            if let destinationVC = segue.destination as? FourthViewController {
//                destinationVC.year = year
//            }
//        }
//    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //        print(self.navigationController?.viewControllers)
        //        let newString = f1RacesUrl.replacingOccurrences(of: "2021", with: "2022")
        //        let newString2 = f1RacesUrl2 + "\("2021").json"
        
     
    }
}

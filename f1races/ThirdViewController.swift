//
//  ThirdViewController.swift
//  f1races
//
//  Created by Shreya Raj on 04/08/22.
//

import UIKit

class ThirdViewController: UIViewController {

   
    @IBAction func actionPush(_ sender: Any) {
      
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "MyViewController") as! ViewController
        self.navigationController?.pushViewController(resultViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Third page"
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(self.navigationController?.viewControllers)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  f1races
//
//  Created by Shreya Raj on 02/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgLaunchScreen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home Page"
        imgLaunchScreen.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        tap.numberOfTapsRequired = 1
        imgLaunchScreen.addGestureRecognizer(tap)
        
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
       print("Tap received")
       let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    

//    @IBAction func myCustomAction(){
//        self.navigationController?.pushViewController(SecondViewController(), animated: true)
//    }
//
    

}


//
//  FourthViewController.swift
//  f1races
//
//  Created by Shreya Raj on 05/08/22.
//

import UIKit

class FourthViewController: UIViewController {

    var f1RacesViewModel = F1RacesViewModel()
   
    @IBOutlet weak var myTableView: UITableView!
    var year: Int? //default

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Data"
                self.myTableView.register(UINib(nibName: "RacesDataCell", bundle: nil), forCellReuseIdentifier: "RacesDataCell")
        getRacesData()

    }
    func getRacesData(){
        print ("YEAR:")
        
        print(year)
       
        
        f1RacesViewModel.timeToReloadTable = { [weak self ] in
            
            if Thread.isMainThread{
                self?.myTableView.reloadData()
            } else {
                DispatchQueue.main.async{
                    self?.myTableView.reloadData()
                }
            }
            print("Time to reload table")
        }
        guard let selectedYear2 = year else {
            return

        }
        f1RacesViewModel.fetchingF1RacesFromServer(year: selectedYear2)
    }
    
}
extension FourthViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.f1RacesViewModel.f1RaceData?.mrData?.raceTable?.races?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:RacesDataCell = tableView.dequeueReusableCell(withIdentifier: "RacesDataCell", for: indexPath) as! RacesDataCell
        cell.race = f1RacesViewModel.f1RaceData?.mrData?.raceTable?.races?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

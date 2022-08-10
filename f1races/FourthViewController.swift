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
   // var f1ConstructorData: F1ConstructorData?
    var year: Int = 0//default

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Data"
                self.myTableView.register(UINib(nibName: "RacesDataCell", bundle: nil), forCellReuseIdentifier: "RacesDataCell")
        getRacesData()

    }
    func getRacesData(){
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
        f1RacesViewModel.fetchingF1RacesFromServer()
    }
//    func getRacesData(){
//        let myURL = URL(string: "https://ergast.com/api/f1/2021.json")
//
//        URLSession.shared.dataTask(with: myURL!){data, response, error in
//            do{
//                let myData = try? JSONDecoder().decode(F1RaceData.self, from: data!)
//                self.f1RaceData = myData
//                print(myData?.mrData.raceTable.races)
//                DispatchQueue.main.async {
//                    self.myTableView.reloadData()
//                }
//            }catch{
//
//            }
//        }.resume()
//    }
    
//    func getConstructorsData(){
//
//        let myURL = URL(string: "https://ergast.com/api/f1/2020/constructors")
//        URLSession.shared.dataTask(with: myURL!){data, response, error in
//            do{
//                let myData = try? JSONDecoder().decode(F1ConstructorData.self, from: data!)
//                self.f1ConstructorData = myData
//                print(myData?.mrDataConstructor.constructorTable.constructors)
//                DispatchQueue.main.async{
//                    self.myTableView.reloadData()
//                }
//
//            }
//
//        }
//    }
    
}
extension FourthViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.f1RacesViewModel.f1RaceData?.mrData.raceTable.races.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:RacesDataCell = tableView.dequeueReusableCell(withIdentifier: "RacesDataCell", for: indexPath) as! RacesDataCell
        cell.lblRound.text = self.f1RacesViewModel.f1RaceData?.mrData.raceTable.races[indexPath.row].round
        cell.lblRaceName.text = self.f1RacesViewModel.f1RaceData?.mrData.raceTable.races[indexPath.row].raceName
        cell.lblTime.text = self.f1RacesViewModel.f1RaceData?.mrData.raceTable.races[indexPath.row].time
        cell.lblCircuit.text = self.f1RacesViewModel.f1RaceData?.mrData.raceTable.races[indexPath.row].circuit.circuitName
        cell.lblInformation.text = self.f1RacesViewModel.f1RaceData?.mrData.raceTable.races[indexPath.row].url
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

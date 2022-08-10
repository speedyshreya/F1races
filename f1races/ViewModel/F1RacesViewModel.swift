//
//  F1RacesViewModel.swift
//  f1races
//
//  Created by Shreya Raj on 09/08/22.
//

import Foundation

class F1RacesViewModel{
    private let networkManager = NetworkingManager()
    var year = 2022
    var timeToReloadTable : (() -> ())?
    var f1RaceData : F1RaceData? {
        didSet {
            timeToReloadTable?()
        }
    }
    init(){
    }
    func fetchingF1RacesFromServer(){
        let myURL = URL(string: "https://ergast.com/api/f1/2021.json")
        networkManager.getData(url: myURL!, objectType: F1RaceData.self) {data in
            print(data)
            self.f1RaceData = data
            self.timeToReloadTable?()
           }
        
        //networkManager.getDataTest(url: myURL!) { message, status in
            
    }
    
    
}
                                    

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
    var f1RaceData : F1RacesData? {
        didSet {
            timeToReloadTable?()
        }
    }
    init(){
    }
    func fetchingF1RacesFromServer(year: Int){
        let computedYear = "https://ergast.com/api/f1/\(year).json"
        let myURL = URL(string: computedYear)
        networkManager.getData(url: myURL!, objectType: F1RacesData.self) {data in
            print(data)
            self.f1RaceData = data
            self.timeToReloadTable?()
           }
        
        //networkManager.getDataTest(url: myURL!) { message, status in
            
    }
    
    
}
                                    

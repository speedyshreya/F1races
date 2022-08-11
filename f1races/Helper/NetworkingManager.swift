//
//  NetworkingManager.swift
//  f1races
//
//  Created by Shreya Raj on 09/08/22.
//

import Foundation

class NetworkingManager{
    func getData<T:Codable>(url:URL, objectType: T.Type, onCompletion: @escaping (F1RacesData)->Void){
        URLSession.shared.dataTask(with: url){data, response, error in
            do{
                let myData = try? JSONDecoder().decode(T.self, from: data!)
                //print(myData?.mrData.raceTable.races)
                onCompletion(myData! as! F1RacesData)
                //self.f1ConstructorData = myData
               // print(myData?.mrDataConstructor.constructorTable.constructors)
//                DispatchQueue.main.async{
//                 //   self.myTableView.reloadData()
//                }
                
            } catch {
                
            }
        
        }.resume()
    }
//    func getDataTest(url:URL, onCompletion: @escaping (String, Bool)->Void){
//        URLSession.shared.dataTask(with: url){data, response, error in
//            do{
//                let myData = try? JSONDecoder().decode(F1RaceData.self, from: data!)
//                print(myData?.mrData.raceTable.races)
//                onCompletion("test", true)
//                //self.f1ConstructorData = myData
//               // print(myData?.mrDataConstructor.constructorTable.constructors)
////                DispatchQueue.main.async{
////                 //   self.myTableView.reloadData()
////                }
//                
//            }
//        
//        }.resume()
//    }
}

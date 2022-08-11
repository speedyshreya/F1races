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
                onCompletion(myData! as! F1RacesData)
                
            } catch {
                
            }
        
        }.resume()
    }

}

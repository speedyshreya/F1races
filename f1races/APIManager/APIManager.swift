//
//  APIManager.swift
//  f1races
//
//  Created by Shreya Raj on 04/08/22.
//

import Foundation
import Alamofire

//protocol f1RacesApiProtocol{
//
//    func mySuccessData(raceData:F1RaceData, status: Bool)
//    func failedResponse()
//}

//class APIManager{
//
//    var delegate: f1RacesApiProtocol?
//    static let shareInstance = APIManager()
//
//
//    func getF1RaceInformation(onCompletion: @escaping (F1RaceData?,Bool) -> ()) {
//        let headers: HTTPHeaders = [
//            .contentType("application/json")
//        ]
//
//
//        AF.request(f1RacesUrl, method: .get, parameters: ["":""], encoder: JSONParameterEncoder.default, headers: headers).response{
//            response in debugPrint(response)
//
//            switch response.result{
//            case .success(let data):
//                do{
//                    let f1RaceData = try? JSONDecoder().decode(F1RaceData.self, from: data!)
//                    self.delegate?.mySuccessData(raceData: f1RaceData!, status: true)
//                    onCompletion(f1RaceData,true)
//                    //let json = JSONSerialization.jsonObject(with: data!, options: [])
//
//                    print("success")
//                }catch{
//                    self.delegate?.failedResponse()
//                    onCompletion(nil,false)
//
//                    print(error.localizedDescription)
//                }
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    }
//}
//
//

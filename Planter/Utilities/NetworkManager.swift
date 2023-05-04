//
//  NetworkManager.swift
//  Planter
//
//  Created by Juan Guerrero on 4/30/23.
//

import Foundation
import SwiftUI

class NetworkManager: ObservableObject {
    
    @Published var hardinessZoneData: HardinessZone = HardinessZone()
    @Published var badZipCodeFlag: Bool = false
    
    func getHardinessZone(zipCdode: String) {
        
        guard let zoneURL = URL(string: "https://phzmapi.org/\(zipCdode).json") else { fatalError("BAD URL") }
        
        let urlRequest = URLRequest(url: zoneURL)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            if let error = error {
                print("Request Error: ", error)
                return
            }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedZoneData = try JSONDecoder().decode(HardinessZone.self, from: data)
                        self.hardinessZoneData = decodedZoneData
                        self.badZipCodeFlag = false
                        print(self.hardinessZoneData.zone ?? "")
                    } catch let error {
                        print("Error decoding data: ", error)
                    }
                }
            }
            
            if response.statusCode == 404 {
                DispatchQueue.main.async {
                    self.badZipCodeFlag = true
                }
            }
            
        }
        dataTask.resume()
    }
    
}

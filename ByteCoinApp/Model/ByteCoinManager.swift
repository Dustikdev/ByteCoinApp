//
//  ByteCoinManager.swift
//  ByteCoinApp
//
//  Created by Никита Швец on 23.11.2022.
//

import Foundation

protocol ByteCoinDelegate {
    func didUpdateByteCoin(byteCoinData: DataModel)
    func didFailWithError(error: Error)
}

class ByteCoinManager {
    
    var delegate: ByteCoinDelegate?
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC/"
    let apiKey = "E374273A-870F-4923-8B22-26B661592BA7"
    let countryArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
//https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=E374273A-870F-4923-8B22-26B661592BA7
    
    func fetchRate(row: Int) {
        let url = "\(baseURL)\(countryArray[row])?apikey=\(apiKey)"
        print(url)
        performRequest(urlString: url)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let byteCoinData = self.parseJSON(byteCoinData: safeData) {
                        self.delegate?.didUpdateByteCoin(byteCoinData: byteCoinData)
                    }
                    
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(byteCoinData: Data) -> DataModel? {
        do {
            let decodedData = try JSONDecoder().decode(CodableData.self, from: byteCoinData)
            print(decodedData.rate)
            return DataModel(rate: decodedData.rate, currency: decodedData.asset_id_quote)
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}

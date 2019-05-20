//
//  NetworkController.swift
//  iPortfolio
//
//  Created by Christian Schmutte on 19.05.19.
//  Copyright © 2019 Christian Schmutte. All rights reserved.
//

import Foundation

class NetworkController {
    private weak var delegate: ViewModelDelegate?
    private let baseURL = "http://localhost:8080"
    
    public func fetch(searchWith: String = ""){
        
        let testString: String = "Apple"
        let testTicker: String = "AAPL"
        let randomPrice = Double.random(in: 12.0 ..< 32)
        let newStock1 = Stock(companyName: testString, price: randomPrice, tickerSymbol: testTicker)
        let secondTest: String = "Google"
        let anotherRandom = Double.random(in: 33.0 ..< 56)
        let secondTicker = "GOOGL"
        let newStock2 = Stock(companyName: secondTest, price: anotherRandom, tickerSymbol: secondTicker)
        
        delegate?.stockArray.append(newStock1)
        delegate?.stockArray.append(newStock2)
        
        
//        let finalURL = URL(string: baseURL + searchWith)!
//        let request = URLRequest(url: finalURL)
//        URLSession.shared.dataTask(with: request) { data, response, error in
//
//            do {
//                let stockArray = try JSONDecoder().decode([Stock].self, from: data!)
//
//            } catch {
//
//            }
//
//        }.resume()
    }
    
    init(delegate: ViewModelDelegate) {
        self.delegate = delegate
    }
}

//
//  Stock.swift
//  iPortfolio
//
//  Created by Christian Schmutte on 19.05.19.
//  Copyright © 2019 Christian Schmutte. All rights reserved.
//

import Foundation

struct Stock: Codable {
    var companyName: String
    var price: Double
    var tickerSymbol: String
}

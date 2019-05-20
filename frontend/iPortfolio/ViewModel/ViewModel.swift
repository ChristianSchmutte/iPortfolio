//
//  ViewModel.swift
//  iPortfolio
//
//  Created by Christian Schmutte on 19.05.19.
//  Copyright © 2019 Christian Schmutte. All rights reserved.
//

enum SearchFor {
    case all
    case search(with: String)
}

import Foundation

protocol ViewModelDelegate: class {
    var stockArray: [Stock] { get set }
}

final class ViewModel {
    weak var delegate: ViewModelDelegate?
    
    init() {
    }
    
    func getStocks(search: SearchFor = .all) {
        let network = NetworkController(delegate: delegate!)
        
        
        
        // IF search != "all" call with param, else without params
//        network.fetch()
    }
    
}

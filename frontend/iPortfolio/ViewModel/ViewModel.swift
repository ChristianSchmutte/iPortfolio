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
    weak var delegate: ViewModelDelegate? {
        didSet {
            self.getStocks()
            self.startTimer()
        }
    }
    private var updateTimer: Timer?
    
    init() {
        
    }
    
    private func getStocks() {
        let network = NetworkController(delegate: delegate!)
        network.fetch()
        
        
        // IF search != "all" call with param, else without params
//        network.fetch()
    }
    
    private func startTimer() {
        updateTimer?.invalidate()
        
        updateTimer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) {[weak self] _ in
            self?.getStocks()
        }
    }
    
}

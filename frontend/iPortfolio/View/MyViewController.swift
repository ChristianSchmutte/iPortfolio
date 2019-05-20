//
//  ViewController.swift
//  iPortfolio
//
//  Created by Christian Schmutte on 19.05.19.
//  Copyright © 2019 Christian Schmutte. All rights reserved.
//

import UIKit

class MyViewController: UITableViewController, ViewModelDelegate {
    
    public var stockArray = [Stock]() {
        didSet {
            tableView.reloadData()
        }
    }
//    public var stockDict: [String : Double] = [:] {
//        didSet {
////            print(stockDict.count)
//            for (name, price) in stockDict {
////                print("\(name) : \(price)")
//                if !stockDictKeys.contains(name) {
////                    print("Array hasn't the key yet")
//                    stockDictKeys.append(name)
//                }
//            }
//        }
//    }
//    private var stockDictKeys = [String]() {
//        didSet {
//            tableView.reloadData()
//        }
//    }
    
    let viewModel = ViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        viewModel.delegate = self as ViewModelDelegate
        viewModel.getStocks()
        
        // Do any additional setup after loading the view.
    }
    
    func setUpTableView() {
        
    }


}

extension MyViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return stockArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        let stock = stockArray[indexPath.row]
        cell.textLabel?.text = "\(stock.companyName) : \(stock.price)"
        
        
        
        
        // NEXT BREAK POINT
        return cell
    }
}

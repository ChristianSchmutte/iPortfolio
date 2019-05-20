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
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
//            tableView.reloadData()
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
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func setUpTableView() {
        tableView.backgroundColor = UIColor.init(displayP3Red: 200.0, green: 200.0, blue: 200.0, alpha: 1.0)
        title = "iPortfolio"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        
    }


}

extension MyViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return stockArray.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.font = UIFont(name: "Avenir Next", size: 22.0)
        let stock = stockArray[indexPath.row]
        cell.textLabel?.text = "\(stock.companyName)"
        let stockPrice = String(format: "%.2f", stock.price)
        cell.detailTextLabel?.text = stockPrice
        cell.accessoryType = .disclosureIndicator
        // NEXT BREAK POINT
        return cell
    }
}

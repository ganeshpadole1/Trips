//
//  TripsViewController.swift
//  Trips
//
//  Created by Ganesh Padole on 15/12/20.
//

import UIKit

class TripsViewController: UIViewController, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        
        TripFunctions.readTrips { [weak self] in
            self?.tableView.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = Data.tripModels[indexPath.row].title
        return cell!
    }
}

//
//  MasterTableViewController.swift
//  SearchBar2
//
//  Created by Vũ on 4/3/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

extension MasterTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else {return}
        let searchResultController = (searchController.searchResultsController as! ShowTableViewController)
        searchResultController.stringArray = arrayString.filter {"\($0)".contains(searchText.lowercased())}
        searchResultController.tableView.reloadData()
    }
}

class MasterTableViewController: UITableViewController {
    
    var arrayString : [String] = ["duc","ban","dep","trai"]
    
    var searchController : UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchResultController = UIStoryboard(name: "Search", bundle: nil).instantiateViewController(withIdentifier: "ShowTableViewController") as! ShowTableViewController
        searchController = UISearchController(searchResultsController: searchResultController)
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Here"
        definesPresentationContext = true
        navigationItem.searchController = searchController
        
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayString.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = arrayString[indexPath.row]

        return cell
    }



}

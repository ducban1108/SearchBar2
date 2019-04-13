//
//  ShowTableViewController.swift
//  SearchBar2
//
//  Created by Vũ on 4/3/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ShowTableViewController: UITableViewController {
    
    var stringArray : [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

  

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stringArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = stringArray[indexPath.row]

        return cell
    }


   
}

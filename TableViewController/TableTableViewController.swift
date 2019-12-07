//
//  TableTableViewController.swift
//  TableViewController
//
//  Created by Mahendar ramidi on 12/7/19.
//  Copyright © 2019 Mahendar ramidi. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
    
    var titleArray = ["Game of Trones", "Criminal Minds", "Suites", "Narcos", "Black List"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return titleArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "titles", for: indexPath)
        cell.textLabel?.text = titleArray[indexPath.row]
        return cell
    }

}

//
//  LocationsViewController.swift
//  MyLocations
//
//  Created by Atikur Rahman on 1/1/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit
import CoreData
import CoreLocation

class LocationsViewController: UITableViewController {
    
    var managedObjectContext: NSManagedObjectContext!
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell") as UITableViewCell
        
        let descriptionLabel = cell.viewWithTag(100) as UILabel
        descriptionLabel.text = "If you can see this"
        
        let addressLabel = cell.viewWithTag(101) as UILabel
        addressLabel.text = "Then it works!"
        
        return cell
    }

}

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
    var locations = [Location]()
    
    override func viewDidLoad() {
        let fetchRequest = NSFetchRequest()
        let entity = NSEntityDescription.entityForName("Location", inManagedObjectContext: managedObjectContext)
        fetchRequest.entity = entity
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        var error: NSError?
        let foundObjects = managedObjectContext.executeFetchRequest(fetchRequest, error: &error)
        
        if foundObjects == nil {
            fatalCoreDateError(error)
            return
        }
        
        locations = foundObjects as [Location]
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell") as UITableViewCell
        
        let location = locations[indexPath.row]
        
        let descriptionLabel = cell.viewWithTag(100) as UILabel
        descriptionLabel.text = location.locationDescription
        
        let addressLabel = cell.viewWithTag(101) as UILabel
        if let placemark = location.placemark {
            addressLabel.text = "\(placemark.subThoroughfare) \(placemark.thoroughfare)," +
                                "\(placemark.locality)"
        } else {
            addressLabel.text = ""
        }
        
        return cell
    }

}

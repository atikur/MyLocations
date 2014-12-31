//
//  Location.swift
//  MyLocations
//
//  Created by Atikur Rahman on 12/31/14.
//  Copyright (c) 2014 Atikur Rahman. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

class Location: NSManagedObject {

    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var date: NSDate
    @NSManaged var locationDescription: String
    @NSManaged var category: String
    @NSManaged var placemark: CLPlacemark?

}

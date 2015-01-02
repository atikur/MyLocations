//
//  LocationCell.swift
//  MyLocations
//
//  Created by Atikur Rahman on 1/1/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!

    func configureForLocation(location: Location) {
        if location.locationDescription.isEmpty {
            descriptionLabel.text = "(No Descript)"
        } else {
            descriptionLabel.text = location.locationDescription
        }
        
        if let placemark = location.placemark {
            addressLabel.text =
                "\(placemark.subThoroughfare) \(placemark.thoroughfare)," +
                "\(placemark.locality)"
        } else {
            addressLabel.text = String(format: "Lat: %.8f, Long: %.8f", location.latitude, location.longitude)
        }
        
        photoImageView.image = imageForLocation(location)
    }
    
    func imageForLocation(location: Location) -> UIImage {
        if location.hasPhoto {
            if let image = location.photoImage {
                return image
            }
        }
        
        return UIImage()
    }
}

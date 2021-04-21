//
//  VehicleViewModel.swift
//  BellAssesment
//
//  Created by ijaz ahmad on 2021-04-21.
//

import Foundation
import UIKit

enum VehicleName: String {
    case LandRover = "Land Rover"
    case BMW = "BMW"
    case Mercedez = "Mercedes Benz"
    case Alpine = "Alpine"
}

class VehicleViewModel {
    var name: String
    var model: String
    var price: String
    var rating:  Double
    var pros: [String]?
    var cons: [String]?
    var image: UIImage?
    
    init(vehicle: Vehicle) {
        self.name = vehicle.name
        self.model = vehicle.model
        self.price = "Price: " + String(vehicle.price)
        self.rating = vehicle.rating
        self.pros = vehicle.pros
        self.cons  = vehicle.cons
        self.setImage(vehicle: vehicle)
    }
    
    private func setImage(vehicle: Vehicle)  {
        
        if vehicle.name == VehicleName.BMW.rawValue {image = UIImage(named: "BMW_330i.jpg")}
        else if vehicle.name == VehicleName.LandRover.rawValue {image = UIImage(named: "Range_Rover.jpg")}
        else if vehicle.name == VehicleName.Mercedez.rawValue {image = UIImage(named: "Mercedez_benz_GLC.jpg")}
        else if vehicle.name == VehicleName.Alpine.rawValue {image = UIImage(named: "Alpine_roadster.jpg")}
    }
}

//
//  VehicleService.swift
//  BellAssesment
//
//  Created by ijaz ahmad on 2021-04-21.
//

import Foundation

protocol VehicleServiceProtocol {
    
    init(vehicles: [Vehicle])
    func size() -> Int
    func getAll() -> [Vehicle]
    func filterByMake(make: String) -> [Vehicle]?
    func filterByModel(model: String) -> [Vehicle]?
    func filterByMakeAndModel(make: String, model: String) -> [Vehicle]?
    func filterVehicles(make: String, model: String) -> [Vehicle]?
}

struct VehicleService: VehicleServiceProtocol {
    
    private var vehicles: [Vehicle]
    
    init(vehicles: [Vehicle]) {
        self.vehicles = vehicles
    }
    
    func size() -> Int {
        vehicles.count
    }
    
    func getAll() -> [Vehicle] {
        return vehicles
    }
    
    func filterByMake(make: String) -> [Vehicle]? {
        return vehicles.filter({ (vehicle) -> Bool in
            vehicle.name.lowercased().contains(make.lowercased())
        })
    }
    
    func filterByModel(model: String) -> [Vehicle]? {
        return vehicles.filter({ (vehicle) -> Bool in
            vehicle.model.lowercased().contains(model.lowercased())
        })
    }
    
    func filterByMakeAndModel(make: String, model: String) -> [Vehicle]? {
        return vehicles.filter({ (vehicle) -> Bool in
            vehicle.name.lowercased().contains(make.lowercased()) &&
            vehicle.model.lowercased().contains(model.lowercased())
        })
    }
    
    func filterVehicles(make: String, model: String) -> [Vehicle]? {
        if make != "" && model != "" { return self.filterByMakeAndModel(make: make, model: model)}
        else if model != "" { return self.filterByModel(model: model) }
        else if make != "" { return self.filterByMake(make: make) }
        else  { return self.getAll() }
    }
}

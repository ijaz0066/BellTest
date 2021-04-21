//
//  Vehicle.swift
//  BellAssesment
//
//  Created by ijaz ahmad on 2021-04-20.
//

import Foundation

struct Vehicle: Decodable {
    var name: String
    var model: String
    var price: Int
    var rating:  Double
    var pros: [String]?
    var cons: [String]?
    
    enum CodingKeys: String, CodingKey {
        case name = "make"
        case model
        case price = "customerPrice"
        case rating
        case pros = "prosList"
        case cons = "consList"
    }
    
    init(name: String, model: String, price: Int, rating: Double, pros: [String]?, cons: [String]?) {
        
        self.name = name
        self.model = model
        self.price = price
        self.rating = rating
        self.pros = pros
        self.cons = cons
    }
    
     init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let name = try container.decode(String.self, forKey: .name)
        let model = try container.decode(String.self, forKey: .model)
        let price = try container.decode(Int.self, forKey: .price)
        let rating = try container.decode(Double.self, forKey: .rating)
        let pros = try container.decodeIfPresent(Array<String>.self, forKey: .pros)
        let cons = try container.decodeIfPresent(Array<String>.self, forKey: .cons)
        

        self.init(name: name, model: model, price: price, rating: rating, pros: pros, cons: cons)
    }
}

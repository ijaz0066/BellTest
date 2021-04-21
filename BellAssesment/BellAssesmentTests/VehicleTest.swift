//
//  VehicleTest.swift
//  BellAssesmentTests
//
//  Created by ijaz ahmad on 2021-04-21.
//

import XCTest
@testable import BellAssesment


class VehicleTest: XCTestCase {
    
    var vehicle: Vehicle!
    var viewModel: VehicleViewModel!

    override func setUpWithError() throws {
        vehicle = Vehicle(name: "Toyota", model: "Camry", price: 25, rating: 4.0, pros: nil, cons: nil)
        viewModel = VehicleViewModel(vehicle: vehicle)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testVehicleName() {

        
        XCTAssertEqual(viewModel.name, vehicle.name)
    }
    
    func testPrice() {

        XCTAssertEqual(viewModel.price, "Price: " + String(vehicle.price))
    }

}

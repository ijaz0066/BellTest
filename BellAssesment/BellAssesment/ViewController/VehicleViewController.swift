//
//  ViewController.swift
//  BellAssesment
//
//  Created by ijaz ahmad on 2021-04-20.
//

import UIKit

class VehicleViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var makeTextField: UITextField!
    @IBOutlet weak var modelTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableViewCellNib = UINib(nibName: "VehicleTableViewCell", bundle: nil)
        tableView.register(tableViewCellNib, forCellReuseIdentifier: "cell")
        
        filterView.layer.cornerRadius = 10.0
        self.makeShadowOfTextField(textField: modelTextField)
        self.makeShadowOfTextField(textField: makeTextField)
        
    }
}

extension VehicleViewController  {
    
    private func makeShadowOfTextField(textField: UITextField) {
        textField.layer.shadowRadius = 2.0
        textField.layer.shadowOpacity  = 1
        textField.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}

extension VehicleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? VehicleTableViewCell
        return cell!
    }
    
    
}


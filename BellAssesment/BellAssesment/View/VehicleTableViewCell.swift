//
//  VehicleTableViewCell.swift
//  BellAssesment
//
//  Created by ijaz ahmad on 2021-04-20.
//

import UIKit
import Cosmos

class VehicleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var displayImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var ratingView: CosmosView!
    
    var viewModel: VehicleViewModel! {
        didSet {
            self.name.text = viewModel.name
            self.price.text = viewModel.price
            self.ratingView.rating = viewModel.rating
            self.displayImageView.image = viewModel.image
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

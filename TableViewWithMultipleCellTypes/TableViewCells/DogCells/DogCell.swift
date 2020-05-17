//
//  DogCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Raman Singh on 2020-05-16.
//  Copyright © 2020 Raman Singh. All rights reserved.
//

import UIKit

class DogCell: UITableViewCell, PetListable {
    
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    
    func setupWithPet(_ pet: Pet) {
        petImageView.image = pet.photo
        titleLabel.text = pet.name
        priceLabel.text = "$ \(pet.price)"
        ratingsLabel.text = "\(pet.ratings)"
    }
    
}

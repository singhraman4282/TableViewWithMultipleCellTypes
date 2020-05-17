//
//  PetCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Raman Singh on 2020-05-17.
//  Copyright © 2020 Raman Singh. All rights reserved.
//

import UIKit

protocol PetListable: UITableViewCell {
    func setupWithPet(_ pet: Pet)
}

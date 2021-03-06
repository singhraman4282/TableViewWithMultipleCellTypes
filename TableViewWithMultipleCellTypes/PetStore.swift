//
//  PetStore.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Raman Singh on 2020-05-16.
//  Copyright © 2020 Raman Singh. All rights reserved.
//

import UIKit

enum PetType: String {
    case bird = "Birds"
    case dog = "Dogs"
    case cat = "Cats"
}

struct Pet {
    let petType: PetType
    let name: String
    let price: Double
    let ratings: Double
    let photo: UIImage?
}

struct PetStore {
    static let pets: [Pet] = [Pet(petType: .bird,
                                  name: "Oscar",
                                  price: 94.99,
                                  ratings: 3.2,
                                  photo: UIImage(named: "maccaw")),
                              Pet(petType: .bird,
                                  name: "Jerry",
                                  price: 99.99,
                                  ratings: 4.5,
                                  photo: UIImage(named: "lovebird")),
                              Pet(petType: .dog,
                                  name: "Mike",
                                  price: 299.99,
                                  ratings: 5.0,
                                  photo: UIImage(named: "pug")),
                              Pet(petType: .dog,
                                  name: "Rollo",
                                  price: 399.99,
                                  ratings: 4.7,
                                  photo: UIImage(named: "dachshund")),
                              Pet(petType: .cat,
                                  name: "Meowly Cyrus",
                                  price: 194.99,
                                  ratings: 3.1,
                                  photo: UIImage(named: "kitty3")),
                              Pet(petType: .cat,
                                  name: "Jeff",
                                  price: 149.99,
                                  ratings: 1.5,
                                  photo: UIImage(named: "kitty2")),
                              Pet(petType: .cat,
                                  name: "Kyle",
                                  price: 189.99,
                                  ratings: 3.2,
                                  photo: UIImage(named: "kitty1"))
    ]
}

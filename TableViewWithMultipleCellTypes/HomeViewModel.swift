//
//  HomeViewModel.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Raman Singh on 2020-05-16.
//  Copyright © 2020 Raman Singh. All rights reserved.
//

import Foundation

enum Sortion: CaseIterable {
    case price
    case ratings
    case name
    case type
}

class HomeViewModel {
    
    private var sortion: Sortion
    private let _pets: [Pet]
    private var petsCategorized: [PetsByType] = []
    
    var pets: [Pet] {
        switch sortion {
        case .price:
            return _pets.sorted { $0.price < $1.price }
        case .ratings:
            return _pets.sorted { $0.ratings > $1.ratings }
        case .name:
            return _pets.sorted { $0.name < $1.name }
        case .type:
            return _pets.sorted { $0.petType.rawValue < $1.petType.rawValue }
        }
    }
    
    init() {
        self.sortion = .price
        self._pets = PetStore.pets
    }
    
    func setSortion(to sortion: Sortion) {
        self.sortion = sortion
    }
    
}

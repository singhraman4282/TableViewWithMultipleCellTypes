//
//  HomeViewController.swift
//  TableViewWithMultipleCellTypes
//
//  Created by Raman Singh on 2020-05-16.
//  Copyright © 2020 Raman Singh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    
    private lazy var viewModel: HomeViewModel = {
        return HomeViewModel()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: BirdCell.asString, bundle: nil), forCellReuseIdentifier: BirdCell.asString)
        tableView.register(UINib(nibName: DogCell.asString, bundle: nil), forCellReuseIdentifier: DogCell.asString)
        tableView.register(UINib(nibName: CatCell.asString, bundle: nil), forCellReuseIdentifier: CatCell.asString)
    }
    
    @IBAction func sortSegmentPressed(_ sender: UISegmentedControl) {
        let selectedSortionMethod = Sortion.allCases[sender.selectedSegmentIndex]
        viewModel.setSortion(to: selectedSortionMethod)
        tableView.reloadData()
    }
    
}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.pets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pet = viewModel.pets[indexPath.row]
        var petCell: PetListable
        switch pet.petType {
        case .bird:
            petCell = tableView.dequeueReusableCell(withIdentifier: BirdCell.asString, for: indexPath) as! BirdCell
        case .dog:
            petCell = tableView.dequeueReusableCell(withIdentifier: DogCell.asString, for: indexPath) as! DogCell
        case .cat:
            petCell = tableView.dequeueReusableCell(withIdentifier: CatCell.asString, for: indexPath) as! CatCell
        }
        petCell.setupWithPet(pet)
        return petCell
    }
}

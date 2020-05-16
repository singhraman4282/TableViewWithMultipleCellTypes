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
    @IBOutlet weak var sortSegment: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sortSegmentPressed(_ sender: UISegmentedControl) {
        
    }
    
    
}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

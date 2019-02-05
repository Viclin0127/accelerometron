//
//  ListTableViewController.swift
//  accelerometron
//
//  Created by YuanHungLin on 2019/2/4.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return a configured cell with image and name
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell
            else { return UITableViewCell() }
        cell.configuredCell(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of cells
        return imageArray.count
    }
    
}

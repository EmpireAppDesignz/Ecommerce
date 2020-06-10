//
//  FeedTableViewController.swift
//  Ecommerce
//
//  Created by Eric Rosas on 2/13/17.
//  Copyright © 2017 EmpireAppDesignz. All rights reserved.
//

import UIKit

class FeedTableViewController : UITableViewController
{
    var shoes: [Shoe]?
    
    struct Storyboard {
        static let feedShoeCell = "FeedShoeCell"
        static let showShoeDetail = "ShowShoeDetail"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "FEED"
        
        shoes = Shoe.fetchShoes()
        self.tableView.reloadData()
    
        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showShoeDetail {
            if let shoeDetailTVC = segue.destination as? ShoeDetailTableViewController {
                let selectedShoe = self.shoes?[(sender as! IndexPath).row]
                shoeDetailTVC.shoe = selectedShoe
            }
        }
    }
}

// MARK - UITableViewDataSource

extension FeedTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let shoes = shoes {
            return shoes.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.feedShoeCell, for: indexPath) as! FeedShoeTableViewCell
        
        cell.shoe = self.shoes?[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }

}


// MARK: - UITableViewDelegate

extension FeedTableViewController
{
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: Storyboard.showShoeDetail, sender: indexPath)
    }
}





















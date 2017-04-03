//
//  CheckoutTableViewController.swift
//  Ecommerce
//
//  Created by Eric Rosas on 2/13/17.
//  Copyright © 2017 EmpireAppDesignz. All rights reserved.
//

import UIKit

class CheckoutTableViewController: UITableViewController
{
    struct Storyboard {
        static let billingTitleCell = "billingTitleCell"      // cell 0
        static let billingInfoCell = "billingInfoCell"        // cell 1
        static let cartDetailCell = "cartDetailCell"          // cell 2
        static let cartTotalCell = "cartTotalCell"            // cell 3
        static let submitButtonCell = "submitButtonCell"      // cell 4
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension CheckoutTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.billingTitleCell, for: indexPath)
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.billingInfoCell, for: indexPath)
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartDetailCell, for: indexPath)
            return cell
            
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartTotalCell, for: indexPath)
            return cell
            
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.submitButtonCell, for: indexPath)
            return cell
            
        default: return UITableViewCell()
        }
    }
}













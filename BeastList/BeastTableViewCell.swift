//
//  BeastTableViewCell.swift
//  BeastList
//
//  Created by Dathan Wong on 10/14/20.
//  Copyright © 2020 Dathan Wong. All rights reserved.
//

import UIKit

class BeastTableViewCell: UITableViewCell {

    var delegate: BeastCellDelegate?
    
    @IBAction func showButtonPressed(_ sender: UIButton) {
        delegate?.showTaskDescription(description: (self.textLabel?.text)!)
    }
    
}

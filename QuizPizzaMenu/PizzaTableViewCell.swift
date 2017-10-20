//
//  PizzaTableViewCell.swift
//  QuizPizzaMenu
//
//  Created by Sam Pramudana on 10/20/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class PizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var labelHarga: UILabel!
    @IBOutlet weak var labelSpecial: UILabel!
    @IBOutlet weak var labelAwal: UILabel!
    @IBOutlet weak var labelJudul: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

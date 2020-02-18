//
//  ShowCell.swift
//  TableViewWithImage
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ShowCell: UITableViewCell {
    @IBOutlet weak var contentview: UIView!
    @IBOutlet weak var showpic: UIImageView!
    @IBOutlet weak var showname: UILabel!
    @IBOutlet weak var showprice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentview.layer.cornerRadius = 10
        showpic.layer.cornerRadius = 10
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

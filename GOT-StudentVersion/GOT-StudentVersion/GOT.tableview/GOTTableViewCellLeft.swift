//
//  GOTTableViewCell.swift
//  GOT-StudentVersion
//
//  Created by albert coelho oliveira on 8/14/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class GOTTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
 
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

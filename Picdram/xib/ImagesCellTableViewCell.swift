//
//  ImagesCellTableViewCell.swift
//  Picdram
//
//  Created by ADMIN on 8/26/19.
//  Copyright © 2019 ADMIN. All rights reserved.
//

import UIKit

class ImagesCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var username: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print(String(username.text!))
        // Configure the view for the selected state
    }
    
}

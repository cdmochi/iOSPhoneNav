//
//  UserViewCell.swift
//  PhoneNav
//
//  Created by chayapam suesawatwanich on 28/12/2563 BE.
//  Copyright © 2563 chayapam suesawatwanich. All rights reserved.
//

import UIKit

class UserViewCell: UITableViewCell {
    
    @IBOutlet var ownerImg: UIImageView!
    @IBOutlet var ownerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

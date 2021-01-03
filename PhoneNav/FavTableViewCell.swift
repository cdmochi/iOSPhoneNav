//
//  FavTableViewCell.swift
//  PhoneNav
//
//  Created by chayapam suesawatwanich on 3/1/2564 BE.
//  Copyright © 2564 chayapam suesawatwanich. All rights reserved.
//

import UIKit

class FavTableViewCell: UITableViewCell {

    @IBOutlet weak var editableBt: UIButton!
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var favName: UILabel!
    @IBOutlet weak var contactType: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

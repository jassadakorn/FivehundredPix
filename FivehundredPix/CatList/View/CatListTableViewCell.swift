//
//  CatListTableViewCell.swift
//  FivehundredPix
//
//  Created by Jassadakorn Ketkaew on 2/1/2560 BE.
//  Copyright © 2560 BE Jassadakorn Ketkaew. All rights reserved.
//

import UIKit

class CatListTableViewCell: UITableViewCell {

    @IBOutlet var imgCover: UIImageView!
    @IBOutlet var lblCatName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

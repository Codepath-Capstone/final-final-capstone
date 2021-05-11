//
//  AppCell.swift
//  Subscription Tracker
//
//  Created by Austin on 5/11/21.
//

import UIKit

class AppCell: UITableViewCell {

   
    @IBOutlet weak var appContent: UILabel!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  MemeCustomTableViewCell.swift
//  V2MemeMe
//
//  Created by Lee McCormick on 10/7/20.
//

import UIKit

class MemeCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

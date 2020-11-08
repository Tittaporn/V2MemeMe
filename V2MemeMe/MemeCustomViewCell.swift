//
//  MemeCustomViewCell.swift
//  V2MemeMe
//
//  Created by Lee McCormick on 10/5/20.
//

import UIKit

class MemeCustomViewCell: UICollectionViewCell {
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!

    func updateCell(_ meme: Meme) {

        //update cell's view
        memeImageView.image = meme.memedImage
        topLabel.text = meme.topText as String?
        bottomLabel.text = meme.bottomText as String?
    }
}

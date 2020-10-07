//
//  memeStruct.swift
//  V2MemeMe
//
//  Created by Lee McCormick on 10/5/20.
//


import Foundation
import UIKit

//MARK: - Initializing a Meme object with Struct
//Initializing a Meme object
struct Meme {
    var topText: String
    var bottomText: String
    var originalImage: UIImage
    var memedImage: UIImage
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}



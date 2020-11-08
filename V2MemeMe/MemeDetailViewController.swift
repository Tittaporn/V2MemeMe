//
//  ViewController.swift
//  V2MemeMe
//
//  Created by Lee McCormick on 10/5/20.
//

import UIKit

class MemeDetailViewController: UIViewController {
    var meme: Meme!
    
    @IBOutlet weak var imageViewMeme: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        
             // self.tabBarController?.tabBar.isHidden = true
      //  self.navigationController?.navigationBar.isHidden = true
              
              self.imageViewMeme!.image =  meme.memedImage
        // Do any additional setup after loading the view.
    }
    
    //MARK: - to cancel
    @IBAction func cancel(_ sender: Any) {
       
       dismiss(animated: true, completion: nil)

    }

}


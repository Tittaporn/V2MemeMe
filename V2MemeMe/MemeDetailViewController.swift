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
        
              self.tabBarController?.tabBar.isHidden = true
              
              self.imageViewMeme!.image =  meme.memedImage
        // Do any additional setup after loading the view.
    }
    
    //MARK: - to cancel
    @IBAction func cancel(_ sender: Any) {
        //                  imageView.image = nil
        //                  settingUpTextField(textField: topTextField, text: "TOP")
        //                  settingUpTextField(textField: bottomTextField, text: "BOTTOM")
       dismiss(animated: true, completion: nil)

//        let sentMemeController = self.storyboard?.instantiateViewController(withIdentifier: "SentMemeViewController") as! MemeCollectionViewController
//        present(sentMemeController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

/*
 // MARK: - VillainDetailViewController: UIViewController

 class VillainDetailViewController: UIViewController {
     
     // MARK: Properties
     
     var villain: Villain!
     
     // MARK: Outlets
     
     @IBOutlet weak var imageView: UIImageView!
     @IBOutlet weak var label: UILabel!
     
     // MARK: Life Cycle
     
     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         self.label.text = self.villain.name
   
         self.tabBarController?.tabBar.isHidden = true
         
         self.imageView!.image = UIImage(named: villain.imageName)
     }
     
     override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         self.tabBarController?.tabBar.isHidden = false
     }
 }
 */

//
//  MemeCollectionViewController.swift
//  V2MemeMe
//
//  Created by Lee McCormick on 10/5/20.
//

import UIKit

private let reuseIdentifier = "Cell"

class MemeCollectionViewController: UICollectionViewController {

    /*
     @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
     // MARK: Properties
     
     
     // TODO: Add outlet to flowLayout here.
     
     // Get ahold of some villains, for the table
     // This is an array of Villain instances
     let allVillains = Villain.allVillains
     
     // MARK: Life Cycle
     
     override func viewDidLoad() {
         super.viewDidLoad()
         //TODO: Implement flowLayout here.
         let space:CGFloat = 3.0
            let dimensionWidth = (view.frame.size.width - (2 * space)) / 3.0
         let dimensionHeight = (view.frame.size.height - (2 * space)) / 3.0


            flowLayout.minimumInteritemSpacing = space
            flowLayout.minimumLineSpacing = space
            flowLayout.itemSize = CGSize(width: dimensionWidth, height: dimensionHeight)
     
     }

     */
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    //create a property called memes, and set memes array from the AppDelegate
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    /* or another code to create a property called memes, and set memes array from the AppDelegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
     */

   
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO: Implement flowLayout here.
        let space:CGFloat = 3.0
           let dimensionWidth = (view.frame.size.width - (2 * space)) / 3.0
        let dimensionHeight = (view.frame.size.height - (2 * space)) / 3.0


           flowLayout.minimumInteritemSpacing = space
           flowLayout.minimumLineSpacing = space
           flowLayout.itemSize = CGSize(width: dimensionWidth, height: dimensionHeight)
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        
//        collectionview!.delegate = self
//         collectionview!.dataSource = self
        collectionView!.reloadData()
    }
    

    // MARK: UICollectionViewDataSource



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeCollectionViewCellIdentifier", for: indexPath) as! MemeCustomViewCell
    
        let meme = self.memes[(indexPath as NSIndexPath).row]
        // Configure the cell
    
        cell.memeImageView?.image = meme.memedImage
        cell.topLabel?.text = meme.topText
        cell.bottomLabel?.text = meme.bottomText
       
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        
        let memeController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        memeController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(memeController, animated: true)
        
    }

}


/*
 import Foundation
 import UIKit

 // MARK: - VillainCollectionViewController: UICollectionViewController

 class VillainCollectionViewController: UICollectionViewController {

     // MARK: Properties
     
     // Get ahold of some villains, for the table
     // This is an array of Villain instances.
     let allVillains = Villain.allVillains
     
     // MARK: Life Cycle
     
     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         self.tabBarController?.tabBar.isHidden = false
     }
     
     // MARK: Collection View Data Source
     
     override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return self.allVillains.count
     }
     
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VillainCollectionViewCell", for: indexPath) as! VillainCollectionViewCell
         let villain = self.allVillains[(indexPath as NSIndexPath).row]
         
         // Set the name and image
         cell.nameLabel.text = villain.name
         cell.villainImageView?.image = UIImage(named: villain.imageName)
         //cell.schemeLabel.text = "Scheme: \(villain.evilScheme)"
         
         return cell
     }
     
     override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
         
         let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
         detailController.villain = self.allVillains[(indexPath as NSIndexPath).row]
         self.navigationController!.pushViewController(detailController, animated: true)
         
     }
 }

 */

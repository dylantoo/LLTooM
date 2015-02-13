//
//  PhotoMainViewCtr.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/1/21.
//

import UIKit

let reuseIdentifier = "PhotoCellIdentifier"

class PhotoMainViewCtr: UICollectionViewController {
    
    var photoManager = PhotoManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
       var nib = UINib(nibName:"PhotoCell", bundle:nil)
       self.collectionView?.registerNib(nib, forCellWithReuseIdentifier: reuseIdentifier)
//        self.collectionView?.registerClass(PhotoCell.classForCoder(), forCellWithReuseIdentifier: reuseIdentifier)
        
        self.collectionView?.addLTHeadRefreshView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    // MARK: UICollectionViewDataSource
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoManager.numberOfPhotos()
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell : PhotoCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as PhotoCell
        cell.backgroundColor = UIColor.lightGrayColor()
        cell.photoImgview = UIImageView(image: photoManager.imageAtIndexInPhotos(currentImageIndex: indexPath.row))
        return cell
    }

    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize{
        /* PhotoCell不能随着这边的值自动布局 */
        return CGSizeMake(100, 130)
    }
    
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(25, 15, 15, 15);
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}

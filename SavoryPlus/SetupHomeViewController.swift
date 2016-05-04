//
//  SetupHomeViewController.swift
//  SavoryPlus
//
//  Created by Ted on 4/30/16.
//  Copyright © 2016 savoryplus.SavoryPlus. All rights reserved.
//

import UIKit

class SetupHomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var collectionFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var setupCollectionView: UICollectionView!
    
    @IBAction func pageChangeControl(sender: AnyObject) {
        let x = CGFloat(pageControl.currentPage) * self.setupCollectionView.frame.size.width
        self.setupCollectionView.setContentOffset(CGPointMake(x, 0), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupCollectionView.registerNib(UINib(nibName: "LinkToSavoryWifiCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LinkToSavoryWifi")
        self.setupCollectionView.registerNib(UINib(nibName: "WifiInputCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "WifiInput")
        self.setupCollectionView.registerNib(UINib(nibName: "ConnectionViaWifiCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ConnectionViaWifi")
        
        let width = (UIScreen.mainScreen().bounds.width - 64)
        let height = (UIScreen.mainScreen().bounds.height - 200)
        self.collectionFlowLayout.itemSize = CGSize(width: width, height: height)
        
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageNum = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        self.pageControl.currentPage = Int(pageNum)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell: UICollectionViewCell?
        if indexPath.row == 0 {
        cell = collectionView.dequeueReusableCellWithReuseIdentifier("LinkToSavoryWifi", forIndexPath: indexPath) as! LinkToSavoryWifiCollectionViewCell
        } else if indexPath.row == 1 {
        cell = collectionView.dequeueReusableCellWithReuseIdentifier("WifiInput", forIndexPath: indexPath) as! WifiInputCollectionViewCell
        } else {
            cell = collectionView.dequeueReusableCellWithReuseIdentifier("ConnectionViaWifi", forIndexPath: indexPath) as! ConnectionViaWifiCollectionViewCell
        }
        
//        let page = pages[indexPath.item]
//        cell.pageImageView.image = UIImage(named: page[Constants.image]!)
//        cell.titleLabel.text = page[Constants.title]
//        cell.descriptionLabel.text = page[Constants.description]
        
        return cell!
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

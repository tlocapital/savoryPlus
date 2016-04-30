//
//  RecipeDetailViewController.swift
//  SavoryPlus
//
//  Created by 陳正昇 on 2016/4/25.
//  Copyright © 2016年 SavoryPlus. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    // MARK: - IBOutlets

    @IBOutlet weak var collectionView: UICollectionView!    
    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var collectVFLayout: UICollectionViewFlowLayout!
    
    // Create a array of fake data from RecipeData.swift
    private var createFakeArrayData = RecipeData.createFakeDatas()
    private var cellIdentifier = "RecipeDetailCell"
    var tempFoodImageData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = (UIScreen.mainScreen().bounds.width - 10)
        self.collectVFLayout.itemSize = CGSize(width: width, height: width)
        self.imageFood.image = UIImage(named: tempFoodImageData)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension RecipeDetailViewController: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.createFakeArrayData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(self.cellIdentifier, forIndexPath: indexPath) as! RecipeDetailCollectionViewCell
        
        cell.recipeData = createFakeArrayData[indexPath.item]
        
        return cell
    }
    
}

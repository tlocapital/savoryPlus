//
//  WifiInputCollectionViewCell.swift
//  SavoryPlus
//
//  Created by Ted on 5/3/16.
//  Copyright © 2016 savoryplus.SavoryPlus. All rights reserved.
//

import UIKit

class WifiInputCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var accountWifi: UITextField!
    @IBOutlet weak var passwordWifi: UITextField!
    @IBOutlet weak var connectButOutlet: UIButton!
    @IBAction func connectBut(sender: AnyObject) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        connectButOutlet.layer.cornerRadius = 5
        
        innerView.layer.cornerRadius = 5
        innerView.layer.masksToBounds = true
        
        innerView.layer.shadowColor = UIColor.darkGrayColor().CGColor
        innerView.layer.shadowOpacity = 0.5
        innerView.layer.shadowRadius = 10
        innerView.layer.shadowOffset = CGSizeZero
        innerView.layer.masksToBounds = false

        
//        shadowColor sets the color of the shadow, and needs to be a CGColor.
//        shadowOpacity sets how transparent the shadow is, where 0 is invisible and 1 is as strong as possible.
//        shadowOffset sets how far away from the view the shadow should be, to give a 3D offset effect.
//        shadowRadius sets how wide the shadow should be.
        // Initialization code
    }

}

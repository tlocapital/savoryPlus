//
//  ConnectionViaWifiCollectionViewCell.swift
//  SavoryPlus
//
//  Created by Ted on 5/3/16.
//  Copyright © 2016 savoryplus.SavoryPlus. All rights reserved.
//

import UIKit

class ConnectionViaWifiCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var connectionStatusLabel: UILabel!
    @IBOutlet weak var connectionImage: UIImageView!
    @IBOutlet weak var confirmButOutlet: UIButton!
    @IBAction func confirmButtom(sender: AnyObject) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        confirmButOutlet.layer.cornerRadius = 5
        confirmButOutlet.layer.borderWidth = 1
        confirmButOutlet.layer.borderColor = UIColor.init(red: 245/255, green: 166/255, blue: 35/255, alpha: 1).CGColor
        // Initialization code
    }

}

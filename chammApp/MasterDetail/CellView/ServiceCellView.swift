//
//  ServiceCellView.swift
//  chammApp
//
//  Created by Jennifer Lin on 2019/6/25.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit
import SDWebImage

class ServiceCellView: UICollectionViewCell {
    
    @IBOutlet weak var bgImageView: UIImageView!

    @IBOutlet weak var lbName: UILabel!
    
    func updateContent( service : ServiceCategory) -> Void {
        lbName.text = service.Name
        
        
        bgImageView.sd_setImage(with: URL(string: service.ImagePath!), placeholderImage: UIImage(named: "placeholder"))
    }
}


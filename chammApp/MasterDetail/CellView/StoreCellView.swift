//
//  StoreCellView.swift
//  chammApp
//
//  Created by Jennifer Lin on 2019/6/25.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class StoreCellView: UITableViewCell {
    
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var lbName: UILabel!
    
    
//    @IBOutlet weak var lbName: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func updateContent( store : Store) -> Void {
        lbName.text = store.Name
    }
    
}


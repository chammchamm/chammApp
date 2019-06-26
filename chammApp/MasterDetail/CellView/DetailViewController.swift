//
//  DetailViewController.swift
//  chammApp
//
//  Created by Jennifer Lin on 2019/6/24.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedStore : Store?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        title = selectedStore?.Name
    }
   
    @IBAction func btnMapClicked(_ sender: Any) {
            DispatchQueue.main.async {                self.performSegue(withIdentifier: "moveToMapViewSegue", sender: self)
            }
    }
    
    
    @IBAction func btnWebClicked(_ sender:
        Any) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "moveToNoteViewSegue", sender: self)
        }
    }
    

    
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
        case "moveToMapViewSegue":
            
            break
        case "moveToNoteViewSegue":
            
            break
        default:
            break
        }
        
        
    }
    
    
}

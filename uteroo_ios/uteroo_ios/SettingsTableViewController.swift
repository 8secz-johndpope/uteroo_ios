//
//  SettingsTableViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/11.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    

    @IBOutlet weak var showPopUp: UITableViewCell!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*let tap = UITapGestureRecognizer(target: self, action: #selector(SettingsTableViewController.showPopup))
        showPopUp.isUserInteractionEnabled = true
        showPopUp.addGestureRecognizer(tap)*/
    }
    
    
    @IBAction func showPopup(_ sender: AnyObject) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destVC = storyboard.instantiateViewController(withIdentifier: "destinationVC") as! PopUpViewController
        destVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        destVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve

        self.present(destVC, animated: true, completion: nil)
    }
    
}

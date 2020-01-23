//
//  SetupViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/18.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//
import UIKit

class SetupViewController : UIViewController {
    
    @IBOutlet weak var acceptButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        acceptButton.isEnabled = false
    }

    @IBAction func acceptClick(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "isFirstLoad")
    }
    
    @IBAction func toggle(_ sender: Any) {
        acceptButton.isEnabled = true
    }
}

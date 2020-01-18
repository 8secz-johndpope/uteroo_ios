//
//  SetupViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/18.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//
import UIKit

class SetupViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func acceptClick(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isFirstLoad")
    }
    
}

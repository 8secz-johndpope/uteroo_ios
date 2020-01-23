//
//  LaunchViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/20.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import Foundation
import UIKit

class LaunchViewController: UIViewController {
    
    override func viewDidLoad() {
               super.viewDidLoad()
               // Do any additional setup after loading the view, typically from a nib.
        if(UserDefaults.standard.bool(forKey: "isFirstLoad")){
            self.performSegue(withIdentifier: "onboarding", sender: self)
        }
        else{
            self.performSegue(withIdentifier: "home", sender: self)
        }
           }
}

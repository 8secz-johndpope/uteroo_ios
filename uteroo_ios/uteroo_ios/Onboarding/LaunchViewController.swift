//
//  LaunchViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/20.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import Foundation
import UIKit

class LaunchViewController: UIViewController, UIWindowSceneDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isFirstLaunch = UserDefaults.standard.bool(forKey: "isFirstLoad")
        if(isFirstLaunch != false) {
            let board = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "home") as UIViewController
            let window = UIApplication.shared.windows.first
            window?.rootViewController = board
        }
        else{
            
            let board = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "onboarding") as UIViewController
            let window = UIApplication.shared.windows.first
            window?.rootViewController = board
        }
    }
}

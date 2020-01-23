//
//  OnboardingViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/15.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import Foundation
import UIKit

class OnboardingViewController: UIViewController {
        
    override func loadView() {
    super.loadView()
        let isFirstLaunch = UserDefaults.standard.bool(forKey: "isFirstLoad")
        if(isFirstLaunch != false) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "home")
            self.present(vc, animated:true, completion:nil)
            self.view.window?.rootViewController?.show(vc, sender: self)
            //present(vc, animated: false, completion: nil)  //show(vc, sender: self)
            //presentViewController:viewController animated:YE completion:nil
            //show(vc, sender: self)
            //performSegue(withIdentifier: "id", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
}

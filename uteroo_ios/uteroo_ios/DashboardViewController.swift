//
//  FirstViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/11.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
       /* let isFirstLaunch = UserDefaults.standard.bool(forKey: "isFirstLoad")
        if(isFirstLaunch != false) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "home")
            //self.present(vc, animated:true, completion:nil)
            //show(vc, sender: self)"
            performSegue(withIdentifier: "id", sender: self)
        }*/
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}


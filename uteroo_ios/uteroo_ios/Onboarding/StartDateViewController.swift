//
//  StartDateViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/20.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import Foundation
import UIKit

class StartDateViewController: UIViewController {
    
    var selectedValue = String()
    @IBOutlet weak var startDatePicker: UIDatePicker!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nextButton.isEnabled = false
    
    }
    
    @IBAction func datePicker(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        selectedValue = dateFormatter.string(from: startDatePicker.date)
        nextButton.isEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
}

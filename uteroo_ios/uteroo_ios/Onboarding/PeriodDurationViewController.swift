//
//  PeriodDurationViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/18.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit

class PeriodDurationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var periodPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            pickerData = ["1 day", "2 days", "3 days", "4 days", "5 days", "6 days", "7 days"]
            periodPicker.delegate = self
            
        }
        
        override func didReceiveMemoryWarning() {
               super.didReceiveMemoryWarning()
               // Dispose of any resources that can be recreated.
           }
           
    @IBAction func onNextClick(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "periodDuration")
    }
           func numberOfComponents(in pickerView: UIPickerView) -> Int {
               return 1
           }
           
           func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
               return pickerData.count
           }
        func pickerView(_ pickerView: UIPickerView,
            titleForRow row: Int,
            forComponent component: Int) -> String? {

                // Return a string from the array for this row.
                return pickerData[row]
        }
}



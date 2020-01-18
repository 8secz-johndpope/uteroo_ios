//
//  CycleDurationViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/18.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit

class CycleDurationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var cycleDurationPicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    var selectedValue = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerData = ["1 day", "2 days", "3 days", "4 days", "5 days", "6 days", "7 days","8 days","9 days",
        "10 days","11 days","12 days","13 days","14 days","15 days","16 days","17 days","18 days","19 days","20 days","21 days","22 days","23 days","24 days","25 days","26 days","27 days","28 days","29 days","30 days","31 days","32 days","33 days","34 days","35 days"]
        
        cycleDurationPicker.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           selectedValue = pickerData[row] as String
    }
}

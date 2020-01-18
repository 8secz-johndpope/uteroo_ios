//
//  OnboardingViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/15.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import Foundation
import UIKit

class OnboardingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pickerData: [String] = [String]()
    
    @IBOutlet weak var startDatePicker: UIDatePicker!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
        //periodPickerView.delegate = self
        //self.periodDurationPickerView.dataSource = self
        
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
}

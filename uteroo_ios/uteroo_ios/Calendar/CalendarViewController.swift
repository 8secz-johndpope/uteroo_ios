//
//  SecondViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/11.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController {

    @IBOutlet weak var calendarView: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
        calendar.dataSource = self as? FSCalendarDataSource
        calendar.delegate = self as? FSCalendarDelegate
        self.calendarView = calendar
        
    }

}


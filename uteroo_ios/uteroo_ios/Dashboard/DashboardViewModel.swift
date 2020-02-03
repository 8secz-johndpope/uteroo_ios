//
//  DashboardViewModel.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/02/01.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//
import Foundation
import GRDB

public class DashboardViewModel {
    
    var periodDayCount: Int?
    var cycleUtil = CycleUtil()
    var today = Date()
    
    func getPeriodDayCount() {
        try? dbQueue?.read { db  in
            let cycle = try MenstrualCycle.fetchAll(db, sql: "SELECT * FROM menstrualCycle ORDER BY startDateOfPeriod DESC LIMIT 1")
            if(cycle.count > 0) {
                let startDate: MenstrualCycle = cycle.first!
                periodDayCount = cycleUtil.getPeriodDayCountUtil(startDate: startDate.startDateOfPeriod!, today: today)
            }
            else{
                periodDayCount = -1
            }
        }
    }
    
    func addMenstrualCycle(){
        let today = Date()
        //var cycle = MenstrualCycle(cycleId: nil,startDateOfPeriod: Date(), endDateOfPeriod: nil, periodDuration: 5, cycleDuration: 28, range: nil)
        try? dbQueue.write{ db in
            try MenstrualCycle(cycleId: nil,startDateOfPeriod: today, endDateOfPeriod: nil, periodDuration: 5, cycleDuration: 28, range: nil).insert(db)
        }
    }
}


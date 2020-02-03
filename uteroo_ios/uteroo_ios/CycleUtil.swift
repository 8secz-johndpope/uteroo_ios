//
//  CycleUtil.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/02/01.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import Foundation

class CycleUtil {
static var app: CycleUtil = {
    return CycleUtil()
}()

    func getPeriodDayCountUtil(startDate: Date, today: Date) -> Int {
        let components = Set<Calendar.Component>([.day])
        let differenceOfDate = Calendar.current.dateComponents(components, from: today, to: startDate)
        return differenceOfDate.day!
    }
    
}


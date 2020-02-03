//
//  MenstrualCycle.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/31.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import GRDB

class MenstrualCycle: Record {
    var cycleId: Int64?
    var startDateOfPeriod: Date?
    var endDateOfPeriod: Date?
    var periodDuration: Int?
    var cycleDuration: Int?
    var range: Array<Date>?
    
    init(cycleId: Int64?, startDateOfPeriod: Date?, endDateOfPeriod: Date?, periodDuration: Int?, cycleDuration: Int?, range: Array<Date>?) {
        self.cycleId = cycleId
        self.startDateOfPeriod = startDateOfPeriod
        self.endDateOfPeriod = endDateOfPeriod
        self.periodDuration = periodDuration
        self.cycleDuration = cycleDuration
        self.range = range
        super.init()
    }
    override class var databaseTableName: String {
        return "menstrualCycle"
    }
    
    enum Columns: String, ColumnExpression {
        case cycleId, startDateOfPeriod, endDateOfPeriod, periodDuration, cycleDuration, range
    }
    
    required init(row: Row) {
        cycleId = row[Columns.cycleId]
        startDateOfPeriod = row[Columns.startDateOfPeriod]
        endDateOfPeriod = row[Columns.endDateOfPeriod]
        periodDuration = row[Columns.periodDuration]
        cycleDuration = row[Columns.cycleDuration]
        range = row[Columns.range] as? Array<Date>
        super.init(row: row)
    }
    
    override func encode(to container: inout PersistenceContainer) {
        container[Columns.cycleId] = cycleId
        container[Columns.startDateOfPeriod] = startDateOfPeriod
        container[Columns.endDateOfPeriod] = endDateOfPeriod
        container[Columns.periodDuration] = periodDuration
        container[Columns.cycleDuration] = cycleDuration
        container[Columns.range] = range as? DatabaseValueConvertible
    }
    
    override func didInsert(with rowID: Int64, for column: String?) {
        cycleId = rowID
    }
}

//
//  MenstrualCyclePrediction.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/31.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import GRDB

class MenstrualCyclePrediction: Record {
    var cycleId: Int64?
    var range: Array<Date>?
    var ovulationDates: Array<Date>?
    
    init(cycleId: Int64?, range: Array<Date>?, ovulationDates: Array<Date>?) {
        self.cycleId =  cycleId
        self.range = range
        self.ovulationDates = ovulationDates
        super.init()
    }
    
    override class var databaseTableName: String{
        return "menstrualCyclePrediction"
    }
    
    enum Columns: String, ColumnExpression {
        case cycleId, range, ovulationDates
    }
    
    required init(row: Row) {
        cycleId = row[Columns.cycleId]
        range = row[Columns.range] as? Array<Date>
        ovulationDates = row[Columns.ovulationDates] as? Array<Date>
        super.init(row: row)
    }
    
    override func encode(to container: inout PersistenceContainer) {
        container[Columns.cycleId] = cycleId
        container[Columns.range] = range as? DatabaseValueConvertible
        container[Columns.ovulationDates] = ovulationDates as? DatabaseValueConvertible
    }
    
    override func didInsert(with rowID: Int64, for column: String?) {
        cycleId = rowID
    }
}

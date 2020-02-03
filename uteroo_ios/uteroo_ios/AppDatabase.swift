//
//  AppDatabase.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/27.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import GRDB

struct AppDatabase {
    
    /// Creates a fully initialized database at path
    static func openDatabase(atPath path: String) throws -> DatabaseQueue {
        // Connect to the database
        let dbQueue = try DatabaseQueue(path: path)
        // Define the database schema
        try migrator.migrate(dbQueue)
        
        return dbQueue
    }
    
    /// The DatabaseMigrator that defines the database schema.
    ///
    /// See https://github.com/groue/GRDB.swift/blob/master/README.md#migrations
    static var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        // Create a table
        // See https://github.com/groue/GRDB.swift#create-tables
        migrator.registerMigration("createMenstrualCycle") { db in
            try db.create(table: "menstrualCycle") { t in
                t.autoIncrementedPrimaryKey("cycleId")
                t.column("startDateOfPeriod", .date)
                t.column("endDateOfPeriod", .date)
                t.column("periodDuration", .integer)
                t.column("cycleDuration", .integer)
                t.column("range", .blob)
               
            }
        }
        
        migrator.registerMigration("createNote"){db in
            try db.create(table: "note") { t in
                t.autoIncrementedPrimaryKey("noteId")
                t.column("dateEntered", .date)
                t.column("text", .text)
                t.column("symptoms", .blob)
            }
        }
        
        migrator.registerMigration("createMenstrualCyclePrediction"){db in
            try db.create(table: "menstrualCyclePrediction") { t in
                t.autoIncrementedPrimaryKey("cyclePredictionId")
                t.column("range", .blob)
                t.column("ovulationDates", .blob)
            }
        }
//        // Migrations for future application versions will be inserted here:
//        migrator.registerMigration(...) { db in
//            ...
//        }
        
        return migrator
    }
}

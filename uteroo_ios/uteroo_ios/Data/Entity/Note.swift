//
//  Note.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/31.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import GRDB

class Note: Record {
    var noteId: Int64?
    var dateEntered: Date?
    var text: String?
    var symptoms: Array<String>?
    
    init(noteId: Int64?, dateEntered: Date?, text: String?, symptoms: Array<String>?) {
        self.noteId =  noteId
        self.dateEntered = dateEntered
        self.text = text
        self.symptoms = symptoms
        super.init()
    }
    
    required init(row: Row) {
        noteId = row[Columns.noteId]
        dateEntered = row[Columns.dateEntered]
        text = row[Columns.text]
        symptoms = row[Columns.symptoms] as? Array<String>
        
        super.init(row: row)
    }
    
    enum Columns: String, ColumnExpression {
        case noteId, dateEntered, text, symptoms
    }
    
    override func encode(to container: inout PersistenceContainer) {
        container[Columns.noteId] = noteId
        container[Columns.dateEntered] = dateEntered
        container[Columns.text] = text
        container[Columns.symptoms] = symptoms as? DatabaseValueConvertible
    }
    
    override class var databaseTableName: String{
        return "note"
    }
    
    override func didInsert(with rowID: Int64, for column: String?) {
        noteId = rowID
    }
}

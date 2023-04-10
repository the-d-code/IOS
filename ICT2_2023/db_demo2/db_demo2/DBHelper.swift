//
//  DBHelper.swift
//  db_demo2
//
//  Created by MAC on 2/2/23.
//

import Foundation
import SQLite3
class DBHelper {
    init()
    {
        var db = openDatabase()
        createTable()
    }
    var dbPath:String = "myDB.sqlite"
    var db: OpaquePointer?
    
    func openDatabase() -> OpaquePointer?
    {
        var filePath = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent(dbPath)
        if sqlite3_open(filePath.path, &db) != SQLITE_OK
        {
            print("Error in opening database")
            return nil
        }
        else
        {
            print("open database at \(dbPath)")
            return db
        }
    }
    func createTable()
    {
        let str = "create table  if not exists stud(id integer primary key,name text, age integer)"
        var strstmt: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, str, -1, &strstmt, nil) == SQLITE_OK
        {
            if sqlite3_step(strstmt) == SQLITE_DONE
            {
                print("table created")
            }else
            {
                print("error in table creation")
            }
        }
        else
        {
            print("error in  compilation")
        }
        sqlite3_finalize(strstmt)
    }
    
    func addrec(id:Int, name:String, age:Int)  {
        var insertstr = "insert into stud(id, name, age) values(?,?,?)"
        var insertstmt:OpaquePointer? = nil
        if sqlite3_prepare_v2(db, insertstr, -1, &insertstmt, nil) == SQLITE_OK
        {
            sqlite3_bind_int(insertstmt, 1, Int32(id))
            sqlite3_bind_text(insertstmt, 2,  (name as NSString).utf8String, -1, nil)
            sqlite3_bind_int(insertstmt, 3, Int32(age))
          if sqlite3_step(insertstmt) == SQLITE_DONE
          {
            print("Record inserted")
          }
          else{
            print("error")
          }
        }
        else
        {
            print("Error in insert compilation")
        }
        sqlite3_finalize(insertstmt)
    }
    
    func read()
    {
        let disp = "select * from stud"
        var dispstmt:OpaquePointer? = nil
        if sqlite3_prepare_v2(db, disp, -1, &dispstmt, nil) == SQLITE_OK
        {
            let sid = sqlite3_column_int(dispstmt, 0)
            let sname = String(describing: String(cString: sqlite3_column_text(dispstmt, 1)))
            let sage = sqlite3_column_int(dispstmt, 2)
            
            while sqlite3_step(dispstmt) == SQLITE_ROW
            {
                print("\(sid) | \(sname) | \(sage)")
            }
            
        }
     sqlite3_finalize(dispstmt)
    }
    
}

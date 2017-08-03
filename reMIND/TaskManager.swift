//
//  TaskManager.swift
//  reMIND
//
//  Created by Rafael Navarro on 8/11/16.
//  Copyright © 2016 Rafael Navarro. All rights reserved.
//

import Foundation

class TaskManager{
    
    static let shareInstance = TaskManager()
    
    var tasks : [[String : String]] = [[String : String]]()
    
    func save() {
        UserDefaults.standard.set(tasks, forKey: "tasks")
    }
    
    func load(){
        if let array = UserDefaults.standard.array(forKey: "tasks") as? [[String : String]]{
            tasks = array
        }
    }
    
}

//
//  CoreDataStack.swift
//  ToDoList
//
//  Created by Bobby Conti on 6/29/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

class CoreDataStack {
    lazy var applicationDocumentsDirectory: URL = {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        let endIndex = urls.index(before: urls.endIndex)
        return urls[endIndex]
    }()
}

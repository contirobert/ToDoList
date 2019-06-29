//
//  ToDoListController.swift
//  ToDoList
//
//  Created by Bobby Conti on 6/29/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import UIKit
import CoreData

class ToDoListController: UITableViewController {
    
    let managedObjectContext = CoreDataStack().managedObjectContext
    
    var items = [Item]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let request: NSFetchRequest<Item> = Item.fetchRequest()
        
        do {
            items = try managedObjectContext.fetch(request)
        } catch {
            print("Error fetching Item objects: \(error.localizedDescription)")
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        let item = items[indexPath.row]
        cell.textLabel?.text = item.text
        
        return cell
    }

}

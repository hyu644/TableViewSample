//
//  ViewController.swift
//  TableViewSample01
//
//  Created by hyu on R 2/09/02.
//  Copyright © Reiwa 2 hyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableview: UITableView!
    
    let cellList = ["予定１","予定２","予定３","予定４","予定５","予定６"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableview.delegate = self
        self.tableview.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let getcell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        getcell.textLabel!.text = cellList[indexPath.row]
        return getcell
        
    }


}


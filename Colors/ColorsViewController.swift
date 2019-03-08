//
//  ColorsViewController.swift
//  Colors
//
//  Created by Zach Swartz on 3/8/19.
//  Copyright © 2019 Zach Swartz. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors: [Color] = [Color(name: "red", colorValue: UIColor.red),
                           Color(name: "orange", colorValue: UIColor.orange),
                           Color(name: "yellow", colorValue: UIColor.yellow),
                           Color(name: "green", colorValue: UIColor.green),
                           Color(name: "blue", colorValue: UIColor.blue),
                           Color(name: "purple", colorValue: UIColor.purple),
                           Color(name: "brown", colorValue: UIColor.brown)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].colorValue
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController, let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.colorChoice = colors[row]
        }
        
    }
    
}

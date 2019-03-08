//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Zach Swartz on 3/8/19.
//  Copyright © 2019 Zach Swartz. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var colorChoice: Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLabel.text = colorChoice?.name
        self.view.backgroundColor = colorChoice?.colorValue
    }
    
}

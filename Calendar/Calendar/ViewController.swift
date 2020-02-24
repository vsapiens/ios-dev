//
//  ViewController.swift
//  Calendar
//
//  Created by Erick González on 20/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbMonth: UILabel!
    @IBOutlet weak var lbDay: UILabel!
    @IBOutlet weak var lbDayNum: UILabel!
    let formatter = DateFormatter()
    formatter.dateformat = ""
    @IBAction func swipeNext(_ sender: Any) {
    }
    @IBAction func swipeLast(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbYear.text = formatter.
    }

}


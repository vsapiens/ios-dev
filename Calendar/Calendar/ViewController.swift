//
//  ViewController.swift
//  Calendar
//
//  Created by Erick González on 20/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let formatter: DateFormatter = DateFormatter()
    var now = Date()
    var dateComponents = DateComponents()
    
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbMonth: UILabel!
    @IBOutlet weak var lbDay: UILabel!
    @IBOutlet weak var lbDayNum: UILabel!

    func update(){
        formatter.dateFormat = "MMMM"
        lbMonth.text = formatter.string(from: now)
        formatter.dateFormat = "dd"
        lbDayNum.text = formatter.string(from: now)
        formatter.dateFormat = "EEEE"
        lbDay.text = formatter.string(from: now)
        formatter.dateFormat = "yyyy"
        lbYear.text = formatter.string(from: now)
    }
    
    @IBAction func swipeLast(_ sender: Any) {
        
        dateComponents.setValue(-1, for: .day)
        now = Calendar.current.date(byAdding: dateComponents, to: now)!
        update()
    }
    @IBAction func swipeNext(_ sender: Any) {
        dateComponents.setValue(1, for: .day)
        now = Calendar.current.date(byAdding: dateComponents, to: now)!
        update()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        update()
        lbDayNum.adjustsFontSizeToFitWidth = true
        lbDayNum.minimumScaleFactor = 0.2
    }
    

}


//
//  FifthViewController.swift
//  TabBarEjercicio
//
//  Created by Erick González on 13/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbInfo.text = text
    }
    var text: String!
    
    @IBOutlet weak var lbInfo: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

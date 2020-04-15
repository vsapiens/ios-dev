//
//  SixthViewController.swift
//  TabBarEjercicio
//
//  Created by Erick González on 13/04/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tfLogin: UITextField!
    
    
    // MARK: - Navigation
     @IBAction func btnLogin(_ sender: Any) {
     }
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let navigationControllerView = segue.destination as! UINavigationController
        
        let tableViewController = navigationControllerView.topViewController as! FourthTableTableViewController
        tableViewController.datoLogin = tfLogin.text
    }
    

}

//
//  ViewController.swift
//  Calculadora
//
//  Created by Erick González on 11/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tfParcial: UITextField!
    
    @IBOutlet weak var tfActividades: UITextField!
    @IBOutlet weak var tfExamen: UITextField!
    @IBOutlet weak var lbExamen: UILabel!
    @IBOutlet weak var tfFinal: UITextField!
    @IBOutlet weak var lbFinal: UILabel!
    
    @IBAction func calculaNota(_ sender: Any) {    }
}


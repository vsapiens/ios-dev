//
//  ViewController2.swift
//  pruebaCicloVida
//
//  Created by Yolanda Martinez on 9/30/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load vista 2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear vista 2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear vista 2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear vista 2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear vista 2")
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       print("prepare for segue vista 2")
    }
    
    @IBAction func accionBoton(_ sender: Any) {
        print("accion del boton")
    }
    
}

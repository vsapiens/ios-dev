//
//  ViewControllerAzul.swift
//  ActClaseStoryboardsE20
//
//  Created by Erick González on 27/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerAzul: UIViewController {
    var nombre: String!
    @IBOutlet weak var tfNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNombre.text = nombre
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        vistaInicial.nombre = tfNombre.text
    }

}

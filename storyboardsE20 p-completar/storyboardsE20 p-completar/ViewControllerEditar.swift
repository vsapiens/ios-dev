//
//  ViewControllerEditar.swift
//  storyboardsE20 p-completar
//
//  Created by Erick González on 24/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEditar: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var nombre: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNombre.text = nombre
        tfEmail.text = email
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        vistaInicial.nombre = tfNombre.text
        vistaInicial.email = tfEmail.text
    }

}

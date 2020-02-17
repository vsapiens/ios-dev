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
    @IBOutlet weak var swSwitch: UISwitch!
    @IBOutlet weak var btCalcula: UIButton!
    
    @IBAction func calculaNota(_ sender: Any) {
        if let parcial = Double(tfParcial.text!),
            let actividades = Double(tfActividades.text!),
            let final = Double(tfExamen.text!){
            let calificacion = parcial*0.5 + actividades*0.2 + final*0.3
            tfFinal.text = "\(calificacion)"
        } else {
            let alert = UIAlertController(title: "Error", message: "Los campos deben de tener valor númerico.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(accion)
            present(alert,animated: true,completion: nil)
        }
    }
    
    @IBAction func cambiaOpción(_ sender: Any) {
        if swSwitch.isOn {
            btCalcula.titleLabel = "Calcula Nota Final"!
            
        } else {
            btCalcula.titleLabel = "Calcua Nota Final"!
        }
    }
    
}


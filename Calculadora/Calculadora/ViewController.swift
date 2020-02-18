//
//  ViewController.swift
//  Calculadora
//
//  Created by Erick González on 11/02/20.
//  Copyright © 2020 Erick González. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfParcial: UITextField!
    @IBOutlet weak var tfActividades: UITextField!
    @IBOutlet weak var tfExamen: UITextField!
    @IBOutlet weak var lbExamen: UILabel!
    @IBOutlet weak var tfFinal: UITextField!
    @IBOutlet weak var lbFinal: UILabel!
    @IBOutlet weak var swSwitch: UISwitch!
    @IBOutlet weak var btCalcula: UIButton!
    
    @IBAction func calculaNota(_ sender: Any) {
        
            if swSwitch.isOn {
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
            } else {
                if let parcial = Double(tfParcial.text!),
                    let actividades = Double(tfActividades.text!) {
                    let calificacion = ( 70 - parcial * 0.5 - actividades * 0.2) / 0.3
                    tfFinal.text = "\(calificacion)"
                    
                } else {
                    let alert = UIAlertController(title: "Error", message: "Los campos deben de tener valor númerico.", preferredStyle: .alert)
                    let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alert.addAction(accion)
                    present(alert,animated: true,completion: nil)
                }
            }
        }
    
    @IBAction func quitaTeclado(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func cambiaOpción(_ sender: Any) {
        tfParcial.text = ""
        tfActividades.text = ""
        tfExamen.text = ""
        tfFinal.text = ""
        
        if swSwitch.isOn {
        tfExamen.isHidden = false
        lbExamen.isHidden = false
        lbFinal.text = "Nota Final"
        btCalcula.setTitle("Calcula Nota Final", for: .normal)
        } else {
            tfExamen.isHidden = true
            lbExamen.isHidden = true
            lbFinal.text = "Nota para pasar"
            btCalcula.setTitle("Calcula Nota Pasar", for: .normal)
        }
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
